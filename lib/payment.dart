import 'dart:async';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'classhub.dart';


class Payment{
 static StreamSubscription<List<PurchaseDetails>> _subscription;
 static bool buySuccess = false;
 static final InAppPurchaseConnection _connection = InAppPurchaseConnection.instance;
 static String productName = '';
 static String productID = '';
 static String productPrice = '';
 static String checkForPremium = 'No';
 static   List<ProductDetails> products = [];
 static Set<String> _kIds = {'textover_1'};
 //static Set<String> _subIds = {'mealfit_subs'};

  static void initialize() async{
  // await checkPremiumStatus();
  }

  //This gets past purchases
 static Future<void> listProductsParam() async{
    //final InAppPurchaseConnection _connection = InAppPurchaseConnection.instance;
    final Stream purchaseUpdates = InAppPurchaseConnection.instance.purchaseUpdatedStream;

    _subscription = purchaseUpdates.listen((purchaseDetailsList) {
      _listenToPurchaseUpdated(purchaseDetailsList);
    }, onDone: () {
      _subscription.cancel();
    }, onError: (error) {
      // handle error here.
    });

    final QueryPurchaseDetailsResponse purchaseResponse = await _connection.queryPastPurchases();
    // Set literals require Dart 2.2. Alternatively, use `Set<String> _kIds = <String>['product1', 'product2'].toSet()`.
    final ProductDetailsResponse response = await InAppPurchaseConnection.instance.queryProductDetails(_kIds);
    //final QueryPurchaseDetailsResponse purchaseResponse = await _connection.queryPastPurchases();

      products = response.productDetails;

    print("fffffffffffffffffff");
    //print(response.error.code);
    //checkForPremium = "No";
    /*ClassHub().mySharedPreference("premiumTokenSP", "get", "").then((onValue){
      if(onValue == null){

          checkForPremium = "No";*/

        if (purchaseResponse.error == null) {
          if(purchaseResponse.pastPurchases.length <= 0){
            checkForPremium = "No";
          }else{
            checkForPremium = "Yes";
          }
            InAppPurchaseConnection.instance.isAvailable().then((onValue1){
              if(onValue1 != false){
                for (var product in products) {
                  if(_kIds.first == product.id) {
                    productID = product.id;
                    productName = product.title;
                    productPrice = product.price;
                  }
                }
              }else{
                ClassHub().showToast("Please check your internet connection & try again");
              }
            });

          /*}else if(purchaseResponse.pastPurchases.length > 0){
            //You have already purchased an item
            checkForPremium = 'Yes';
          }*/
        }else if(purchaseResponse.error != null){
          // handle query past purchase error..
          print("The following shows the errors returned");
          print(purchaseResponse.error.message);
        }
      /*}else{
          checkForPremium = 'Yes';
      }
    });*/

  }

  static void _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) {
    purchaseDetailsList.forEach((PurchaseDetails purchaseDetails) async {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        // show progress bar or something
        await _connection.completePurchase(purchaseDetails);
      } else {
        if (purchaseDetails.status == PurchaseStatus.error) {
          // show error message or failure icon
        }
        else if (purchaseDetails.status == PurchaseStatus.purchased) {
          ClassHub().mySharedPreference("premiumTokenSP", "set", purchaseDetails.productID);
          ClassHub().showToast("Complete Purchase confirmation here in listener");
          await _connection.completePurchase(purchaseDetails);
          //}
        }
      }
    });
  }


  static void connectStore() async{
    //final InAppPurchaseConnection _connection = InAppPurchaseConnection.instance;
    final bool available = await InAppPurchaseConnection.instance.isAvailable();
    if (!available) {
      print("The store cannot be reached or accessed.");
    }else{
      print("Hurray connected");
    }
    //const Set<String> _kIds = {'mealfit_123'};

    final QueryPurchaseDetailsResponse purchaseResponse = await _connection.queryPastPurchases();

    final ProductDetailsResponse response = await InAppPurchaseConnection.instance.queryProductDetails(_kIds);
    if (response.notFoundIDs.isNotEmpty) {
      print(response.productDetails.length);
      // Handle the error.
      //     ClassHub().showToast("Sorry Negative");
      print("PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP");
      print(response.error.message);
    }else{
      //     ClassHub().showToast("Hurray positive");

        products = response.productDetails;


      print("LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL");
      print("THE APP DISCOVERED THE PRODUCT ON GOOGLE PLAY SERVER. HURRAY");
    }
/////////////////////////////////////////////////////////////

    ClassHub().mySharedPreference("premiumTokenSP", "get", null).then((onValue){
      if(onValue == productID){
        //Already on premium
        ClassHub().showToast("Great! You have already purchased this product");
      }else {
        if (purchaseResponse.error == null) {
            InAppPurchaseConnection.instance.isAvailable().then((onValue1){
              if(onValue1 != false){
                //final ProductDetails productDetails = products[0]; // Saved earlier from queryPastPurchases().
                // for(var purhaseItem in responsePurchase.pastPurchases) {
                for (var product in products) {
                  final PurchaseParam purchaseParam = PurchaseParam(productDetails: product);
                  print("PRODUCT DETAIL LIST");
                  print(product.description);
                  if(_kIds.first == product.id){
                  var checkSuccess = InAppPurchaseConnection.instance.buyNonConsumable(
                    purchaseParam: purchaseParam,);


                    }

                }


                // From here the purchase flow will be handled by the underlying storefront.
                // Updates will be delivered to the `InAppPurchaseConnection.instance.purchaseUpdatedStream`.
              }else{
                ClassHub().showToast("Please check your internet connection & try again");
              }
            });

        }else if(purchaseResponse.error != null){
          // handle query past purchase error..
          print("The following shows the errors returned");
          print(purchaseResponse.error);
        }
        //////////////////////////
      }
    });
  }

 static Future<String> checkIfAlreadyBought() async{
   final QueryPurchaseDetailsResponse purchaseResponse = await _connection.queryPastPurchases();
   // Set literals require Dart 2.2. Alternatively, use `Set<String> _kIds = <String>['product1', 'product2'].toSet()`.
   final ProductDetailsResponse response = await InAppPurchaseConnection.instance.queryProductDetails(_kIds);
   products = response.productDetails;
   if (purchaseResponse.error == null) {

     for (PurchaseDetails purchase0 in purchaseResponse.pastPurchases) {
       if(purchase0.productID != null){
         if(purchase0.productID == _kIds.first) {
           checkForPremium = "Yes";
           ClassHub().mySharedPreference("premiumTokenSP", "set", purchase0.productID);
           //ClassHub().showToast("toastBody " + purchase0.productID);
         }
       }else{
         checkForPremium = "No";
         ClassHub().mySharedPreference("premiumTokenSP", "set", null);
       }
       print("WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW");
       print(purchase0.transactionDate);
     }
   }
   return checkForPremium;
 }

 /*static Future<String> checkIfSubAlreadyBought(String sub) async{
   final QueryPurchaseDetailsResponse purchaseResponse = await _connection.queryPastPurchases();
   // Set literals require Dart 2.2. Alternatively, use `Set<String> _kIds = <String>['product1', 'product2'].toSet()`.
   final ProductDetailsResponse response = await InAppPurchaseConnection.instance.queryProductDetails(_kIds);
   products = response.productDetails;
   if (purchaseResponse.error == null) {

     for (PurchaseDetails purchase0 in purchaseResponse.pastPurchases) {
       if(purchase0.productID == sub){
         checkForPremium = "Yes";
       }else{
         checkForPremium = "No";
       }
       print("WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW");
       print(purchase0.transactionDate);
     }
   }
   return checkForPremium;
 }*/
}