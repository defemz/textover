import 'dart:async';
import 'dart:io';


//import 'package:flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:textover/payhub.dart';
import 'classhub.dart';



class Upgrade extends StatefulWidget {
  //Upgrade(this.dietdescription);
  //final String dietdescription;

  @override
  _MyUpgradeState createState() => _MyUpgradeState();
}

class _MyUpgradeState extends State<Upgrade> {
  Color myColor = const Color(0xff4b0b0b);
  //final InAppPurchaseConnection _connection = InAppPurchaseConnection.instance;
  StreamSubscription<List<PurchaseDetails>>? _subscription;
  bool buySuccess = false;

  String productName = '';
  String productID = '';
  String productPrice = '';
  String checkForPremium = 'No';
  List<ProductDetails> products = [];
  final Set<String> _kIds = {'textover_1'};

  @override
  void initState(){
    productDetails().then((value) {
      if(value.isNotEmpty){
        setState(() {
          productName = value[0];
          productPrice = value[1];
        });
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }


  Future<List<String>> productDetails() async{
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
                     child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(18.0),
                             side: BorderSide(color: Colors.red)
                         ),
                       ),

                       child: Text("Upgrade Now"),
                       onPressed: (){
                         PayHub.connectStore();

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