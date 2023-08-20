import 'dart:io';
import 'dart:typed_data';

//import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:image_picker/image_picker.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:package_info/package_info.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';

import 'package:textover/classhub.dart';
import 'package:textover/editimage.dart';
import 'package:textover/savedImagecards.dart';
import 'package:textover/textover.dart';
import 'package:textover/upgrade.dart';
import 'package:url_launcher/url_launcher.dart';
import 'adclass.dart';
import 'global.dart' as myGlobal;


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  InAppPurchaseConnection.enablePendingPurchases();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextOver',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
        
      ),
      home: MyHomePage(title: 'TextOver'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  ScreenshotController screenshotController = ScreenshotController();
  File _imagePicked;
  Color firstColor = Color(0xff800000);
  Color secondColor = Color(0xff8B4513);
  double topy = 100.0;

  List<DropdownMenuItem<double>> textSizeDropdown = [];
  List<double> textSizes;
  List<String> textColor;
  Color initialTextColor = Colors.white;
  Color initialBufferTextColor = Colors.white;

  double dropDownSelectedItemState = 22;
  List<DropdownMenuItem<double>> items;
  String initialFontType = "Merienda";
  List<DropdownMenuItem<String>> textFontDropdown1 = [];
  List<DropdownMenuItem<String>> textColorDropdown = [];
  List<String> textFonts;
  String dropDownSelectedItemState1 = "Merienda";
  String dropDownSelectedItemState2 = "Start Color";
  List<DropdownMenuItem<double>> items1;

  bool isEditing = false;
  final picker = ImagePicker();
  String yourText = "Your Text here";
  TextEditingController myTextController = TextEditingController();
  List<String> imageList = [];
  List<int> testList = [1,2,3,4,5,6];
  bool isConnectedToInternet = false;
  BannerAd myMediumBanner;
  int appRunCountValue = 0;



  @override
  void initState(){
    super.initState();
    myMediumBanner =  Ads.banner(false);
    versionCheck(context);

    Ads.checkSubSub(1).then((value){
      if(value == "Yes"){
        myGlobal.isPremium = true;
      }
      //     Ads.createInterstitialAd();
    });

    Ads.checkInternet().then((value) {
      if(value == true){
        isConnectedToInternet = true;
      }
      else{
        isConnectedToInternet = false;
      }
    });

    ClassHub().mySharedPreference("chosenTextSize", "get", null).then((onValue){
      if(onValue != null){
        setState(() {
          dropDownSelectedItemState = double.parse(onValue);
        });
      }
    });


    retrieveDirectoryFiles();

    ClassHub().mySharedPreference("myFirstColor", "get", '').then((value){
      if(value != null){
        String valueString = value.split('(0x')[1].split(')')[0]; // kind of hacky..
        int value1 = int.parse(valueString, radix: 16);
        setState(() {
          firstColor = Color(value1);

        });
      }
    });
    ClassHub().mySharedPreference("mySecondColor", "get", '').then((value){
      if(value != null){
        String valueString = value.split('(0x')[1].split(')')[0]; // kind of hacky..
        int value1 = int.parse(valueString, radix: 16);
        setState(() {
          secondColor = Color(value1);
        });
      }
    });

    textSizes = [6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40];
    textFonts = ["Merienda","Delius","DancingScript","Akaya"];
    textColor = ["Start Color", "End Color"];

    _getDropDownMenuItems();

    ClassHub().mySharedPreference("chosenTextSize", "get", null).then((onValue){
      if(onValue != null){
        setState(() {
          //      dropDownSelectedItemState = double.parse(onValue);
        });
      }
    });

    if(myGlobal.bgFile != null){
      _imagePicked = myGlobal.bgFile;
    }

    // ClassHub().populateDatabase(1).then((value) {
    ClassHub().mySharedPreference("newInstall", "get", null).then((value) {
      if(value == "Yes" || value == null){
        ClassHub().saveAllMedia();
          /*Flushbar(
            flushbarPosition: FlushbarPosition.TOP,
            title:  "TIPS",
            message:  "You can swipe quote right or left to navigate between quotes\nCenter quote by clicking quote & dragging up or down\nSwipe up to dismiss",
            // duration:Duration(seconds: 15),

          )..show(context);*/

        ClassHub().mySharedPreference("newInstall", "set", "No");
      }else if(value == "No"){


      }
    });

    //    });

    ///This code block prompt user to rate/review the app &&&&&&&&&&&&&&&
    ClassHub().mySharedPreference("appRunCount", "get", null).then((value) {

      if(value != null){

        setState(() {
          if(myGlobal.myAppHasRun == false){
            appRunCountValue = int.parse(value) + 1;
            print("RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR");
            print(appRunCountValue);
            //myGlobalVar.myAppHasRun = true;
          }
        });
        ///////////////////////////
        ClassHub().mySharedPreference("ratedApp", "get", null).then((value) {
          if(value != "Yes" || value == null){
            if((appRunCountValue % 3 == 0 && myGlobal.myAppHasRun == false )){
              print("QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ");
              print(appRunCountValue);
              setState(() {
                //   Future.delayed(Duration(milliseconds: 1000), () {
                // Do something
                myGlobal.myAppHasRun = true;
                //   });

              });
              _rateApp(context);

              //ClassHub().mySharedPreference("ratedApp", "set", "Yes");
            }
          }
        });
        /////////////////////////////////
        ClassHub().mySharedPreference("appRunCount", "set", appRunCountValue.toString());
      }else if(value == null){
        setState(() {
          if(myGlobal.myAppHasRun == false){
            appRunCountValue = appRunCountValue + 1;

            //myGlobalVar.myAppHasRun = true;
          }
        });

        ClassHub().mySharedPreference("ratedApp", "get", null).then((value) {
          if(value != "Yes" || value == null){
            if((appRunCountValue % 3 == 0 && myGlobal.myAppHasRun == false )){
              print("QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ");
              print(appRunCountValue);
              setState(() {
                //   Future.delayed(Duration(milliseconds: 1000), () {
                // Do something
                myGlobal.myAppHasRun = true;
                //   });

              });
              _rateApp(context);

              //ClassHub().mySharedPreference("ratedApp", "set", "Yes");
            }
          }
        });

        ClassHub().mySharedPreference("appRunCount", "set", appRunCountValue.toString());
      }
    });

    ///&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

  }


  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  _getDropDownMenuItems(){

    // myCountries = ClassHub().countriesList;
    // var i = 0;
    //for(String eachItem in widget.myListParamNames){
    for(double eachItem in textSizes){
      textSizeDropdown.add( new DropdownMenuItem(
        value: eachItem,
        child: Text(eachItem.toString()),
      )
      );
    }

    for(String eachItem1 in textFonts){
      textFontDropdown1.add( new DropdownMenuItem(
        value: eachItem1,
        child: Text(eachItem1),
      )
      );
    }

    for(String eachItem2 in textColor){
      textColorDropdown.add( new DropdownMenuItem(
        value: eachItem2,
        child: Text(eachItem2),
      )
      );
    }

  }

  _launchMailURL(String url) async {
    //const url = 'mailto:pipyard@gmail.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  versionCheck(context) async {
    //Get Current installed version of app
    final PackageInfo info = await PackageInfo.fromPlatform();
    double currentVersion = double.parse(info.version.trim().replaceAll(".", ""));
    // double currentVersion = double.parse(info.version);

    //Get Latest version info from firebase config
    final RemoteConfig remoteConfig = RemoteConfig.instance;

    try {
      // Using default duration to force fetching from remote server.
      await remoteConfig.fetch();
      await remoteConfig.activate();
      remoteConfig.getString('app_current_version');
      double newVersion = double.parse(remoteConfig
          .getString('app_current_version')
          .trim()
          .replaceAll(".", ""));
      //print("new Version");
      //print(newVersion);
      if (newVersion > currentVersion) {
        _showVersionDialog(context).then((onValue){

        });
      }else{

      }
    } /*on FetchThrottledException catch (exception) {
      // Fetch throttled.
      print(exception);
    } */catch (exception) {
      print('Unable to fetch remote config. Cached or default values will be '
          'used');
    }
  }

  //Reusable Dialog box
  Future<void>_showVersionDialog(context) async {
    await showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        String title = "New Update Available";
        String message =
            "There is a newer version of app available please update now.";
        String btnLabel = "Update Now";
        String btnLabelCancel = "Later";
        return
          Platform.isIOS? new CupertinoAlertDialog(
            title: Text(title),
            content: Text(message),
            actions: <Widget>[
              TextButton(
                child: Text(btnLabel),
                onPressed: () => _launchMailURL('https://play.google.com/store/apps/details?id=image.systemsbase.textover'),
              ),
              TextButton(
                child: Text(btnLabelCancel),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          )
              : new AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: <Widget>[
              TextButton(
                child: Text(btnLabel),
                onPressed: () => _launchMailURL('https://play.google.com/store/apps/details?id=image.systemsbase.textover'),
              ),
              TextButton(
                child: Text(btnLabelCancel),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
      },
    );
  }

  //Reusable Dialog box
  Future<void>_rateApp(context) async {
    await showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        String title = "Rate App";
        String message =
            "Hope you are enjoying using this App. Please rate App Now. Thanks";
        String btnLabel = "Rate Now";
        String btnLabelCancel = "Later";
        return Platform.isIOS
            ? new CupertinoAlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            FlatButton(
              child: Text(btnLabel),
              onPressed: () => _launchMailURL('https://play.google.com/store/apps/details?id=image.systemsbase.textover'),
            ),
            FlatButton(
              child: Text(btnLabelCancel),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        )
            : new AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            FlatButton(
                child: Text(btnLabel),
                onPressed: () {
                  ClassHub().mySharedPreference("ratedApp", "set", "Yes");
                  _launchMailURL('https://play.google.com/store/apps/details?id=image.systemsbase.textover');
                }
            ),
            FlatButton(
              child: Text(btnLabelCancel),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }


  retrieveDirectoryFiles()async{
    List<String> imagePath = [];
    Directory workingDir  = await getApplicationDocumentsDirectory();
    String path = workingDir.path+"/myFinishedImages";
    Directory(path).list(recursive: false).listen((event){
      setState(() {
        imageList.add(event.path);
      });

    });
    // print("QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ");
    // print(imagePath.length);
    //   return imagePath;
  }



  Future<void> _displayImageSnapshot(Uint8List image) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          title: Text('Send Now or Discard?'),
          content:  Container(
            //height: MediaQuery.of(context).size.height,
            child: Container(
              //height: MediaQuery.of(context).size.height*0.5,
              //height: 120,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 7),
                      child: Center(
                          child: Column(
                            children: [
                              image != null ? ClipRRect(
                                child: Image.memory(image),
                                borderRadius: BorderRadius.all(Radius.circular(13)),
                              ) : Container(),
                            ],
                          )),
                    ),


                  ],
                ),),
            ),
          ),
          actions: <Widget>[
            Container(
              // height: 40,
              child: Row(children: <Widget>[
                TextButton(
                  child: Text('DISCARD'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),

                TextButton(
                  child: Text('SEND NOW'),
                  onPressed: () {
                    Navigator.of(context).pop();
   ///                 Share.file("title", "name.jpg", image, "image/jpg",text: "Download app=>  https://play.google.com/store/apps/details?id=daily.systemsbase.motivatn");

                  },
                ),
              ],),),

          ],
        );
      },
    );
  }

  Future<void> _displayTextProperty() {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          title: Text('Set Text Properties'),
          content:  StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return Container(
                  // height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    //height: MediaQuery.of(context).size.height*0.5,
                    //height: 120,
                    //width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Container(
                            // width: MediaQuery.of(context).size.width,
                            child: CircleColorPicker(
                              initialColor: Colors.blue,
                              onChanged: (color) => {
                                setState((){
                                  // initialTextColor = color;
                                  initialBufferTextColor = color;
                                })
                              },
                              size: const Size(180, 180),
                              strokeWidth: 4,
                              thumbSize: 26,
                            ),
                          ),

                          SizedBox(height: 15,),

                          Row(children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Text("Text Size"),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: DropdownButton(
                                  isDense: true,
                                  //isDense: true,
                                  style: TextStyle(fontSize: (myHeight(context)/100)*3.2,color: Colors.black,
                                      fontFamily: 'Delius'),
                                  value: dropDownSelectedItemState,
                                  items: textSizeDropdown,
                                  onChanged: (double selectValue){
                                    setState(() {
                                      dropDownSelectedItemState = selectValue;
                                      ClassHub().mySharedPreference("chosenTextSize", "set", dropDownSelectedItemState.toString()).then((onValue){

                                      });

                                    });
                                  },
                                ),
                              ),),
                          ],),

                          SizedBox(height: 15,),

                          Row(children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Text("Font Type"),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: DropdownButton(
                                  isDense: true,
                                  //isDense: true,
                                  style: TextStyle(fontSize: (myHeight(context)/100)*3.2,color: Colors.black,
                                      fontFamily: 'Delius'),
                                  value: dropDownSelectedItemState1,
                                  items: textFontDropdown1,
                                  onChanged: (String selectValue){
                                    setState(() {
                                      dropDownSelectedItemState1 = selectValue;
                                    });
                                  },
                                ),
                              ),),
                          ],),

                        ],
                      ),),
                  ),
                );}),
          actions: <Widget>[
            Container(
              // height: 40,
              child: Row(children: <Widget>[
                TextButton(
                  child: Text('DISCARD'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    /*setState(() {
                      initialTextColor = initialBufferTextColor;
                    });*/
                  },
                ),

                TextButton(
                  child: Text('APPLY'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    // Share.file("title", "name.jpg", image, "image/jpg");

                    setState(() {
                      initialTextColor = initialBufferTextColor;
                    });

                  },
                ),
              ],),),

          ],
        );
      },
    );
  }

  Future<void> _setColorGradient() {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          title: Text('Set Color Gradient'),
          content:  StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return Container(
                  //height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    //height: MediaQuery.of(context).size.height*0.5,
                    //height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[

                          Container(
                            child: DropdownButton(
                              isDense: true,
                              //isDense: true,
                              style: TextStyle(fontSize: (myHeight(context)/100)*3.2,color: Colors.black,
                                  fontFamily: 'Delius'),
                              value: dropDownSelectedItemState2,
                              items: textColorDropdown,
                              onChanged: (String selectValue){
                                setState(() {
                                  dropDownSelectedItemState2 = selectValue;
                                });
                              },
                            ),
                          ),

                          SizedBox(height: 20,),

                          Container(
                            //width: MediaQuery.of(context).size.width,
                            child: CircleColorPicker(
                              initialColor: firstColor,
                              onChanged: (color) => {
                                setState((){
                                  if(dropDownSelectedItemState2 == "Start Color") {
                                    firstColor = color;
                                  }else{
                                    secondColor = color;
                                  }


                                })
                              },
                              size: const Size(180, 180),
                              strokeWidth: 4,
                              thumbSize: 26,
                            ),
                          ),


                        ],
                      ),),
                  ),
                );}),
          actions: <Widget>[
            Container(
              // height: 40,
              child: Row(children: <Widget>[
                TextButton(
                  child: Text('DISCARD'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),

                TextButton(
                  child: Text('APPLY'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    ClassHub().mySharedPreference("myFirstColor", "set", firstColor.toString());
                    ClassHub().mySharedPreference("mySecondColor", "set", secondColor.toString());
                    setState(() {
                      myGlobal.bgFile = null;
                      _imagePicked = null;
                      //  colorGrad1 = firstColor;
                      //   colorGrad2 = secondColor;
                    });

                  },
                ),
              ],),),

          ],
        );
      },
    );
  }

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.values[1]);

    setState(() {
      if (pickedFile != null) {
        myGlobal.isItImageBackground = true;
        _imagePicked = File(pickedFile.path);
        myGlobal.bgFile = _imagePicked;
        /*Ads.createInterstitialAd();
        myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement + 1;*/

        if(Ads.checkAdIntervals() == true){
          Ads.createInterstitialAd();
          myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement +1;

          Ads.delayAdDialog(context);
          Future.delayed(Duration(seconds: 3),(){
            Navigator.of(context).pop();
            Navigator.push(context, MaterialPageRoute(builder: (context) => TextOver(true,_imagePicked,null)));

          });
        }else{
          Navigator.push(context, MaterialPageRoute(builder: (context) => TextOver(true,_imagePicked,null)));

          myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement +1;
        }

      } else {
        print('No image selected.');
      }
    });
  }

  Future snapCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        myGlobal.isItImageBackground = true;
        _imagePicked = File(pickedFile.path);
        myGlobal.bgFile = _imagePicked;
        /*Ads.createInterstitialAd();
        myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement + 1;*/

        if(Ads.checkAdIntervals() == true){
          Ads.createInterstitialAd();
          myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement +1;

          Ads.delayAdDialog(context);
          Future.delayed(Duration(seconds: 3),(){
            Navigator.of(context).pop();
            Navigator.push(context, MaterialPageRoute(builder: (context) => TextOver(true,_imagePicked,null)));

          });
        }else{
          Navigator.push(context, MaterialPageRoute(builder: (context) => TextOver(true,_imagePicked,null)));

          myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement +1;
        }

      } else {
        print('No image selected.');
      }
    });
  }

  Widget textEdit(){
   // isEditing == true?
   return Container(
     child: Stack(
       children: [
         Container(
           child: Text(""),
         ),

       ],
     ),
   );
  }

  double myFontSize(BuildContext context){
    double y = MediaQuery.of(context).size.height * MediaQuery.of(context).devicePixelRatio;
    double x = MediaQuery.of(context).size.width * MediaQuery.of(context).devicePixelRatio;
    final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
    double w = data.size.shortestSide;
    if(y <= 800 && isItTablet() == false){
      //print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      print(MediaQuery.of(context).size.height * MediaQuery.of(context).devicePixelRatio);
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.9;
    }
    else if(y > 800 && y <= 1240 && isItTablet() == false){
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.83;
    }

    else if(y > 1240 && y <= 1500 && isItTablet() == false){
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.75;
    }

    else if(y> 1500 && y<=1900 && isItTablet() == false){
      print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      print(y);
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.7;
    }

    else if(y> 1900 && y<=2200 && isItTablet() == false){
      print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      print(y);
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.6;
    }
    else if(y > 2200 && y <= 2400 && isItTablet() == false){

      //print(MediaQuery.of(context).size.height * MediaQuery.of(context).devicePixelRatio);
      print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      print(y);
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.6;
    }
    else if(y > 2400 && y <= 2600 && isItTablet() == false){

      //print(MediaQuery.of(context).size.height * MediaQuery.of(context).devicePixelRatio);
      print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      print(y);
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.56;
    }
    else if(y > 2600 && isItTablet() == false){
      //print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.56;
    }

    else if(isItTablet() == true && w<700){
      //print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.83;
    }
    else if(isItTablet() == true && w>=700 && w<800){
      //print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.7;
    }
    else if(isItTablet() == true && w>=800 && w<920){
      //print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.68;
    }

  }

  double myHeight(BuildContext context){
    double y = MediaQuery.of(context).size.height * MediaQuery.of(context).devicePixelRatio;
    double x = MediaQuery.of(context).size.width * MediaQuery.of(context).devicePixelRatio;
    final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
    double w = data.size.shortestSide;

    if(y <= 800  && isItTablet() ==false){
      //print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      print(MediaQuery.of(context).size.height * MediaQuery.of(context).devicePixelRatio);
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*1.2;
    }

    if(y > 800 && y <= 1240  && isItTablet() ==false){

      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*1.15;
    }
    if(y > 1240 && y <= 1500  && isItTablet() ==false){
      print(y);
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*1.1;
    }

    if(y> 1500 && y<=1900  && isItTablet() ==false){
      print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      print(y);

      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*1.1;
    }
    if(y> 1900 && y<=2200  && isItTablet() ==false){
      print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      print(y);

      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*1.1;
    }
    if(y > 2200 && y <= 2400  && isItTablet() ==false){
      //print(MediaQuery.of(context).size.height * MediaQuery.of(context).devicePixelRatio);
      print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      print(y);
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*1.1;
    }
    if(y > 2400 && y <= 2600  && isItTablet() ==false){
      //print(MediaQuery.of(context).size.height * MediaQuery.of(context).devicePixelRatio);
      print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      print(y);
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*1.1;
    }
    if(y > 2600  && isItTablet() ==false){
      //print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');

      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*1.1;
    }
    if(isItTablet() == true){

      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.45;

      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.5;
    }
    //return ((MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.75);


  }

  bool isItTablet() {
    final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
    return data.size.shortestSide < 600 ? false : true;
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      resizeToAvoidBottomInset: false,
      /*bottomNavigationBar: isConnectedToInternet == true?BottomAppBar(
        color: Colors.transparent,
        child: Container(
          width: myBanner.size.width.toDouble(),
          height: myBanner.size.height.toDouble(),
          child: AdWidget(ad: myBanner),
        ),
        elevation: 0,
      ):Container(height: 1,),*/
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        backgroundColor: Colors.amber,
        title: Text("TEXTOVER",),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: IconButton(
                icon: Icon(Icons.monetization_on_rounded),
                onPressed: (){
                  //Payment.initialize();
                  //Payment.connectStore();
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Upgrade()));
                }
            ),
          ),


        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          //height: 400,
          //color: Color(0xffFFAEBD7),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(
                  margin: EdgeInsets.only(left: 0,top: 10),
                  padding: EdgeInsets.only(top: (myHeight(context)/100)*0.2),

                  width: (MediaQuery.of(context).size.width-14)/2.1,
                  height: MediaQuery.of(context).size.height*0.2,
                  child: RaisedButton(
                    color: Colors.lightGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                        //padding: EdgeInsets.only(top: (myHeight(context)/100)*0.2),
                        child: Column(children: [
                      Card(
                        elevation: 10,
                        color: Colors.lightGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          child: Icon(Icons.folder_open,size: 80,color: Colors.red,),
                        ),

                      ),
                      Container(
                       // padding: EdgeInsets.only(top: 3),
                        child: Text("GALLERY",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black),),
                      ),
                    ],)),
                    onPressed: (){
                      /*Ads.createInterstitialAd();
                      myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement + 1;*/

                      if(Ads.checkAdIntervals() == true){
                        Ads.createInterstitialAd();
                        myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement +1;

                        Ads.delayAdDialog(context);
                        Future.delayed(Duration(seconds: 3),(){
                          Navigator.of(context).pop();
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ImageCards()));

                        });
                      }else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ImageCards()));

                        myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement +1;
                      }
                      /*if(imageList.length > 0){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ImageCards()));
                      }else{
                       // ClassHub().showToast("");
                      }*/

                      /*print(testList);
                    testList.removeWhere((element) => element == 5);
                    print(testList);*/
                    },
                  ),),

                  Container(
                    margin: EdgeInsets.only(left: 7,top: 10),
                    padding: EdgeInsets.only(top: (myHeight(context)/100)*0.2),
                    width: (MediaQuery.of(context).size.width-14)/2.1,
                    height: MediaQuery.of(context).size.height*0.2,
                    child: RaisedButton(
                      color: Colors.lightGreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                          padding: EdgeInsets.only(top: (myHeight(context)/100)*0.2),
                          child: Column(children: [
                        Card(
                          color: Colors.lightGreen,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Container(
                            child: Icon(Icons.gradient_outlined,size: 80,color: Colors.red,),
                          ),
                        ),
                        Container(
                          //padding: EdgeInsets.only(top: 3),
                          child: Text("GRADIENTS",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black),),
                        ),
                      ],)),
                      onPressed: (){
                        myGlobal.isItImageBackground = false;
                        /*Ads.createInterstitialAd();
                        myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement + 1;
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TextOver(false,null,null)));*/
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => EditImage()));

                        if(Ads.checkAdIntervals() == true){
                          Ads.createInterstitialAd();
                          myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement +1;

                          Ads.delayAdDialog(context);
                          Future.delayed(Duration(seconds: 3),(){
                            Navigator.of(context).pop();
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TextOver(false,null,null)));

                          });
                        }else{
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TextOver(false,null,null)));
                            myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement +1;
                        }

                      },
                    ),),
              ],),

             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               Container(
                 margin: EdgeInsets.only(left: 0,top: 10),
                 padding: EdgeInsets.only(top: (myHeight(context)/100)*0.2),
                 width: (MediaQuery.of(context).size.width-14)/2.1,
                 height: MediaQuery.of(context).size.height*0.2,
                 child: RaisedButton(
                   color: Colors.lightGreen,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15.0),
                   ),
                   child: Container(
                       padding: EdgeInsets.only(top: (myHeight(context)/100)*0.2),
                       child: Column(children: [
                     Card(
                       color: Colors.lightGreen,
                       elevation: 10,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15.0),
                       ),
                       child: Container(
                         child: Icon(Icons.image,size: 80,color: Colors.orange,),
                       ),
                     ),
                     Container(
                       //padding: EdgeInsets.only(top: 3),
                       child: Text("TEXT OVER",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black),),
                     ),
                   ],)),
                   onPressed: (){
                     getImage();
                     //snapCamera();
                     //Navigator.push(context, MaterialPageRoute(builder: (context) => TextOver(true,)));
                     //Navigator.push(context, MaterialPageRoute(builder: (context) => EditImage()));
                   },
                 ),),

               Container(
                 margin: EdgeInsets.only(left: 7,top: 10),
                 padding: EdgeInsets.only(top: (myHeight(context)/100)*0.2),
                 width: (MediaQuery.of(context).size.width-14)/2.1,
                 height: MediaQuery.of(context).size.height*0.2,
                 child: RaisedButton(
                   color: Colors.lightGreen,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15.0),
                   ),
                   child: Container(
                       padding: EdgeInsets.only(top: (myHeight(context)/100)*0.2),
                       child: Column(children: [
                     Card(
                       color: Colors.lightGreen,
                       elevation: 10,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15.0),
                       ),
                       child: Container(
                         child: Icon(Icons.camera_alt,size: 80,color: Colors.orange,),
                       ),
                     ),
                     Container(
                       //padding: EdgeInsets.only(top: 3),
                       child: Text("TAKE PHOTO",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black)),
                     ),
                   ],)),
                   onPressed: (){
                     //       getImage();
                     snapCamera();
                     //Navigator.push(context, MaterialPageRoute(builder: (context) => TextOver(true,)));
                     //Navigator.push(context, MaterialPageRoute(builder: (context) => EditImage()));
                   },
                 ),),
             ],),

              Container(child:Divider(color: Colors.brown,) ,),

              isConnectedToInternet == true? Container(
                margin: EdgeInsets.only(bottom:10,top: 10),

                width: myMediumBanner != null?myMediumBanner.size.width.toDouble():0,
                height: myMediumBanner != null?myMediumBanner.size.height.toDouble():0,
                child: myMediumBanner != null?Card(
                    margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                    shape: RoundedRectangleBorder(
                     // side: BorderSide(width: 3,color: Colors.deepPurpleAccent),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)), ),
                    clipBehavior: Clip.antiAlias,
                    child: AdWidget(ad: myMediumBanner)):Container(height: 1),):Container(
                //child: ,
              ),

            ],),
        ),
      ),


      /*floatingActionButton: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30),
                child: FloatingActionButton(
                  backgroundColor: Color(0xffFFD700),
                  mini: true,
                  heroTag: 'myTag',
                  onPressed: (){
                    //Ads.createInterstitialAd();
                  //  Navigator.push(context, MaterialPageRoute(builder: (context) => QuoteList()));


                  },
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),),

              Container(
                child: FloatingActionButton(
                  backgroundColor: Color(0xff9ACD32),
                  mini: true,
                  heroTag: 'myTag2',
                  onPressed: (){
                     getImage();
                    //Ads.createInterstitialAd();
                   // Navigator.push(context, MaterialPageRoute(builder: (context) => BackImages("front")));
                  },
                  tooltip: 'Increment',
                  child: Icon(Icons.image),
                ),),

              Container(
                child: FloatingActionButton(
                  backgroundColor: Color(0xffFF4500),
                  mini: true,
                  heroTag: 'textproperty',
                  onPressed: (){
                    _displayTextProperty();
                  },
                  tooltip: 'Increment',
                  child: Icon(Icons.text_fields),
                ),),

              Container(
                child: FloatingActionButton(
                  backgroundColor: Color(0xff800000),
                  mini: true,
                  heroTag: 'gradientColor',
                  onPressed: (){
                    _setColorGradient();
                  },
                  tooltip: 'Increment',
                  child: Icon(Icons.color_lens),
                ),),

              Container(
                child: FloatingActionButton(
                  backgroundColor: Color(0xffB8860B),
                  mini: true,
                  heroTag: 'myfav',
                  onPressed: (){

                  },
                  tooltip: 'Increment',
                 // child: isItFavorited == true?Icon(Icons.favorite):Icon(Icons.favorite_border_outlined),
                ),),

            ],)
        ],),*/ // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
