import 'dart:async';
import 'dart:io';

import 'payment.dart';
//import 'package:flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

import 'package:in_app_purchase/in_app_purchase.dart';
import 'classhub.dart';



class Upgrade extends StatefulWidget {
  //Upgrade(this.dietdescription);
  //final String dietdescription;

  @override
  _MyUpgradeState createState() => _MyUpgradeState();
}

class _MyUpgradeState extends State<Upgrade> {
  Color myColor = Color(0xff4b0b0b);
  final InAppPurchaseConnection _connection = InAppPurchaseConnection.instance;
  StreamSubscription<List<PurchaseDetails>> _subscription;
  bool buySuccess = false;

  String productName = '';
  String productID = '';
  String productPrice = '';
  String checkForPremium = 'No';
  List<ProductDetails> products = [];
  Set<String> _kIds = {'textover_1'};

  @override
  void initState(){
    checkIfAlreadyBought().then((value){
      if(value !=null) {
        setState(() {
          checkForPremium = value;
        });
      }
    }
    );
    listProductsParam();

    super.initState();
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }


  //This gets past purchases
   listProductsParam() async{
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
    if (purchaseResponse.error == null) {

      InAppPurchaseConnection.instance.isAvailable().then((onValue1){
        if(onValue1 != false){
          for (var product in products) {
            if(_kIds.first == product.id) {
              setState(() {
                productID = product.id;
                productName = product.title;
                productPrice = product.price;
              });

            }
          }
        }else{
          ClassHub().showToast("Please check your internet connection & try again");
        }
      });

    }else if(purchaseResponse.error != null){
      // handle query past purchase error..
      print("The following shows the errors returned");
      print(purchaseResponse.error.message);
    }

  }

  _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) {
    purchaseDetailsList.forEach((PurchaseDetails purchaseDetails) async {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        // show progress bar or something
        await _connection.completePurchase(purchaseDetails);
      } else {
        if (purchaseDetails.status == PurchaseStatus.error) {
          // show error message or failure icon
        } else if (purchaseDetails.status == PurchaseStatus.purchased) {
          // show success message and deliver the product.
          //if(purchaseDetails.billingClientPurchase.isAcknowledged != true){
           ClassHub().mySharedPreference("premiumTokenSP", "set", purchaseDetails.productID);
           //ClassHub().showToast("Complete Purchase confirmation here in listener");
           Flushbar(
             flushbarPosition: FlushbarPosition.TOP,
             title:  "Message",
             message:  "Great! Your subscription was successful. Close and restart your app now.",
             duration:Duration(seconds: 10),
           )..show(context);
            await _connection.completePurchase(purchaseDetails);
          //}
        }
      }
    });
  }

  connectStore() async{
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
          setState(() {
            products = response.productDetails;
          });
      print("LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL");
      print("THE APP DISCOVERED THE PRODUCT ON GOOGLE PLAY SERVER. HURRAY");
    }
/////////////////////////////////////////////////////////////

    ClassHub().mySharedPreference("premiumTokenSP", "get", null).then((onValue){
      if(onValue == productID){
        //Already on premium
        //ClassHub().showToast("Great! You have already purchased this product");
        Flushbar(
          title:  "Message",
          message:  "Great! You have already upgraded to premium",
          duration:Duration(seconds: 10),
        )..show(context);
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

  Future<String> checkIfAlreadyBought() async{
    final QueryPurchaseDetailsResponse purchaseResponse = await _connection.queryPastPurchases();
    // Set literals require Dart 2.2. Alternatively, use `Set<String> _kIds = <String>['product1', 'product2'].toSet()`.
    final ProductDetailsResponse response = await InAppPurchaseConnection.instance.queryProductDetails(_kIds);
    products = response.productDetails;
    if (purchaseResponse.error == null) {

      for (PurchaseDetails purchase0 in purchaseResponse.pastPurchases) {
        if(purchase0.productID != null){
          if(purchase0.productID == _kIds.first) {
            setState(() {
              checkForPremium = "Yes";
            });
            ClassHub().mySharedPreference("premiumTokenSP", "set", purchase0.productID);
            //ClassHub().showToast("toastBody " + purchase0.productID);
          }
        }else{
          setState(() {
            checkForPremium = "No";
          });
          ClassHub().mySharedPreference("premiumTokenSP", "set", null);
        }
        print("WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW");
        print(purchase0.transactionDate);
      }
    }
    //ClassHub().showToast("toastBody " + checkForPremium);
    return checkForPremium;
  }

  void _showSnackbar(BuildContext context) {
    final scaff = Scaffold.of(context);
    scaff.showSnackBar(SnackBar(
      content: Text("Hay this is it"),
      backgroundColor: Color.fromARGB(255, 255, 0, 0),
      duration: Duration(seconds: 5),
      action: SnackBarAction(
        label: 'UNDO', onPressed: scaff.hideCurrentSnackBar,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //backgroundColor: Color(0xffC0D9AF),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Upgrade",style: TextStyle(fontSize: 18,color: Colors.white),),
      ),
      body:  Container(
        //color: Colors.white,
        //margin: EdgeInsets.only(left:10,right:10, top: 10,bottom: 40),
        //padding: EdgeInsets.only(left:10,right:10, ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xff323232),
        /*decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xff007f00),Color(0xffb3b300)],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              stops: [0.0,1.0],
              tileMode: TileMode.clamp
          ),

        ),*/
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:Container(
            margin: EdgeInsets.only(left:10,right:10, top: 10,bottom: 40),
            padding: EdgeInsets.only(left:10,right:10, ),
            color: Colors.white,

            //height: MediaQuery.of(context).size.height*0.8,
            //width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
               checkForPremium == "No"?Column(
                 children: <Widget>[

                   Container(
                     margin: EdgeInsets.only(top: 15,bottom: 0),
                     child: Text("Upgrade to premium", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   ),

                   Container(
                     margin: EdgeInsets.only(top: 0,bottom: 10),
                     child: Text("**One time payment**", style: TextStyle(fontSize: 14,),),
                   ),
                  /* Container(
                     child: Text("productID: " + productID),
                   ),*/
                   Container(
                     margin: EdgeInsets.only(top: 15,bottom: 10),
                     child: Text(productName),
                   ),
                   Container(
                     child: Text(productPrice, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                   ),

                   Container(
                     margin: EdgeInsets.only(bottom: 30),
                     //child: Text(widget.dietdescription,style: TextStyle(fontSize: 16,height: 2),textAlign: TextAlign.justify,),
                     child: RaisedButton(
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(18.0),
                           side: BorderSide(color: Colors.red)
                       ),
                       child: Text("Upgrade Now"),
                       onPressed: (){
                         connectStore();

                       },
                     ),
                   ),

                   /*Container(
                     child: ListTile(
                       leading: Icon(Icons.check,color: Colors.red,),
                       title:  Container(
                         child: Text("Get unlimited access toupdates"),
                       ),
                     ),
                   ),*/



                   Container(
                     child: ListTile(
                       leading: Icon(Icons.check,color: Colors.red,),
                       title: Container(
                         child: Text("Get permanent access to all available features"),
                       ),
                     ),
                   ),

                   Container(
                     child: ListTile(
                       leading: Icon(Icons.check,color: Colors.red,),
                       title: Container(
                         child: Text("Remove all annoying ads, and take full control of your app."),
                       ),
                     ),
                   ),

                   Container(
                     child: ListTile(
                       leading: Icon(Icons.check,color: Colors.red,),
                       title:  Container(
                         child: Text("Upgrade and have permanent ownership of this app"),
                       ),
                     ),
                   ),

                   Container(
                     child: ListTile(
                       leading: Icon(Icons.check,color: Colors.red,),
                       title:  Container(
                         child: Text("Remove all form of restrictions even if you get a new device"),
                       ),
                     ),
                   ),



                 ],
               ):Container(
                 margin: EdgeInsets.only(top: 20,bottom: 20),
                 child: Text("You are already on Premium"),
               ),

            ],),
            //),
            //),
            //],
            // ),

          ),
        ),),
      // ),
    );
  }
}