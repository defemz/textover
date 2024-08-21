


import 'dart:async';

import 'package:in_app_purchase/in_app_purchase.dart';
import 'classhub.dart';
import 'global.dart' as myGlobal;


class PayHub{
  static final InAppPurchase _inAppPurchase = InAppPurchase.instance;
 static StreamSubscription<List<PurchaseDetails>>? _subscription;
 static final Set<String> _kIds = {'textover_1'};
 static  List<ProductDetails> products = [];




  static Future<void> listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) async {
     for (final PurchaseDetails purchaseDetails in purchaseDetailsList) {
       if (purchaseDetails.status == PurchaseStatus.pending) {
         ///  showPendingUI();
         myGlobal.paymentPending = true;
       } else {
         if (purchaseDetails.status == PurchaseStatus.error) {
           //handleError(purchaseDetails.error!);
           print(purchaseDetails.error);

         }
         if (purchaseDetails.status == PurchaseStatus.purchased || purchaseDetails.status == PurchaseStatus.restored) {

           ClassHub().mySharedPreference("premiumTokenSP", "set", "Yes");
         }

         if (purchaseDetails.status == PurchaseStatus.canceled
         ) {
           ClassHub().mySharedPreference("premiumTokenSP", "set", "No");
         }

         if (purchaseDetails.pendingCompletePurchase) {
           await _inAppPurchase.completePurchase(purchaseDetails);
         }
       }
     }
   }

 static connectStore() async{
    //final InAppPurchase _connection = InAppPurchase.instance;
    final bool available = await InAppPurchase.instance.isAvailable();
    if (!available) {
      print("The store cannot be reached or accessed.");
      ClassHub().showToast("Google play store not available now. Check your internet connection");
    }else{
      /// final QueryPurchaseDetailsResponse purchaseResponse = await _connection.queryPastPurchases();
      //final ProductDetailsResponse purchaseResponse = await _inAppPurchase.queryProductDetails(_kProductIds.toSet());

      final ProductDetailsResponse response = await InAppPurchase.instance.queryProductDetails(_kIds);
      if (response.notFoundIDs.isNotEmpty) {
        print(response.productDetails.length);
        // Handle the error.
        //     ClassHub().showToast("Sorry Negative");
        print("PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP");
        print(response.error?.message);
      }else{
        // ClassHub().showToast("Hurray positive");

        products = response.productDetails;

        print("LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL");
        print("THE APP DISCOVERED THE PRODUCT ON GOOGLE PLAY SERVER. HURRAY");
      }
/////////////////////////////////////////////////////////////

      ///ClassHub().mySharedPreference("premiumTokenSP", "get", '',).then((onValue){
      /*if(onValue == productID){
        //Already on premium
        //ClassHub().showToast("Great! You have already purchased this product");
        Flushbar(
          title:  "Message",
          message:  "Great! You have already upgraded to premium",
          duration:Duration(seconds: 10),
        )..show(context);
      }else {*/
      if (response.error == null) {
        /*InAppPurchase.instance.isAvailable().then((onValue1){
          if(onValue1 != false){*/
            //final ProductDetails productDetails = products[0]; // Saved earlier from queryPastPurchases().
            // for(var purhaseItem in responsePurchase.pastPurchases) {
            for (var product in products) {
              final PurchaseParam purchaseParam = PurchaseParam(productDetails: product);
              print("PRODUCT DETAIL LIST");
              print(product.description);
              if(_kIds.first == product.id){
                var checkSuccess = InAppPurchase.instance.buyNonConsumable(
                  purchaseParam: purchaseParam,);
              }
            }
            // From here the purchase flow will be handled by the underlying storefront.
            // Updates will be delivered to the `InAppPurchaseConnection.instance.purchaseUpdatedStream`.
         /* }else{
            ClassHub().showToast("Please check your internet connection & try again");
          }
        });*/

      }else if(response.error != null){
        // handle query past purchase error..
        print("The following shows the errors returned");
        print(response.error);
      }
    }
    //const Set<String> _kIds = {'mealfit_123'};
   //final InAppPurchaseConnection _connection = InAppPurchaseConnection.instance;



        //////////////////////////
    /// }
   /// });
  }


  /*Future<List<String>> productDetails() async{
    List<String> productData = [];
    final ProductDetailsResponse response = await InAppPurchase.instance.queryProductDetails(_kIds);
    if (response.notFoundIDs.isEmpty) {
      products = response.productDetails;
    }

    if (response.error == null) {
      InAppPurchase.instance.isAvailable().then((onValue1){
        if(onValue1 != false){
          //final ProductDetails productDetails = products[0]; // Saved earlier from queryPastPurchases().
          // for(var purhaseItem in responsePurchase.pastPurchases) {
          for (var product in products) {
            final PurchaseParam purchaseParam = PurchaseParam(productDetails: product);
            print("PRODUCT DETAIL LIST");
            print(product.description);

            if(_kIds.first == product.id){
              setState(() {
                productName = product.title;
                productPrice = product.price;
              });

            }
          }
        }
      });

    }
    return productData;
  }*/
}