import 'dart:convert';
import 'dart:io';


import 'package:image_picker/image_picker.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';
import 'package:textover/textover.dart';
import 'dart:io' as io;
import 'global.dart' as myGlobal;

import 'classhub.dart';




class Emojis extends StatefulWidget {
  // ImageCards(this.frontOrSecPage);
  //this.checkIfFromDietsteps, this.dietname
//  final String frontOrSecPage;

  @override
  _MyEmojisState createState() => _MyEmojisState();
}

class _MyEmojisState extends State<Emojis> {
  Color myColor = Color(0xff4b0b0b);
  List<String> emojiList = [];

  int swipeIndex = 0;
  File _imagePicked;
  final picker = ImagePicker();

  bool toShowAdBanner = true;
  //List<String> emojiSelectedList = [];


  @override
  void initState(){
    super.initState();
    // myRewardedAd = Ads.createRewardedAd();

    ClassHub().retrieveDirectoryFiles().then((value) {
      setState(() {
        //  imageList = value;
      });
    });
    retrieveAssetFiles();
   // retrieveDirectoryFiles();

  }

  @override
  void dispose() {
    super.dispose();
    // myBanner?.dispose();
  }

  retrieveAssetFiles()async{
    final manifestJson = await DefaultAssetBundle.of(context).loadString('AssetManifest.json');
    final images = json.decode(manifestJson).keys.where((String key) => key.startsWith('assets/emojis'));
    print("List of files in assets");
    print(images);
    for(String emoji in images){
      print(emoji);
      setState(() {
        emojiList.add(emoji);
      });
    }
  }

  retrieveDirectoryFiles()async{
    List<String> imagePath = [];
    Directory workingDir  = await getApplicationDocumentsDirectory();
    String path = workingDir.path+"/myFinishedImages";
    Directory(path).list(recursive: false).listen((event){
      setState(() {
        emojiList.add(event.path);
      });

    });
    // print("QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ");
    // print(imagePath.length);
    //   return imagePath;
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.values[1]);

    setState(() {
      if (pickedFile != null) {
        _imagePicked = File(pickedFile.path);
        myGlobal.bgFile = _imagePicked;
      } else {
        print('No image selected.');
      }
    });

    myGlobal.isEditingBackground = true;


  }


  /* double myHeight1(BuildContext context){
    return MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight - 70 ;
  }*/

  double myFontSize(BuildContext context){
    double y = MediaQuery.of(context).size.height * MediaQuery.of(context).devicePixelRatio;
    double x = MediaQuery.of(context).size.width * MediaQuery.of(context).devicePixelRatio;
    final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
    double w = data.size.shortestSide;
    if(y <= 800 && isItTablet() == false){
      //print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      print(MediaQuery.of(context).size.height * MediaQuery.of(context).devicePixelRatio);
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.85;
    }
    else if(y > 800 && y <= 1240 && isItTablet() == false){
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.8;
    }

    else if(y > 1240 && y <= 1500 && isItTablet() == false){
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.68;
    }

    else if(y> 1500 && y<=1900 && isItTablet() == false){
      print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      print(y);
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.67;
    }

    else if(y> 1900 && y<=2200 && isItTablet() == false){
      print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      print(y);
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.62;
    }
    else if(y > 2200 && y <= 2400 && isItTablet() == false){

      //print(MediaQuery.of(context).size.height * MediaQuery.of(context).devicePixelRatio);
      print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      print(y);
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.7;
    }
    else if(y > 2400 && y <= 2600 && isItTablet() == false){

      //print(MediaQuery.of(context).size.height * MediaQuery.of(context).devicePixelRatio);
      print('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
      print(y);
      return (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight- kBottomNavigationBarHeight)*0.72;
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
    // TODO: implement build
    return /*WillPopScope(
      onWillPop: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>
            MyApp()));
      },
      child:*/
      Scaffold(
        //backgroundColor: Colors.black12,

        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("Emojis"),
          elevation: 10,
        ),

        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(bottom: 20),
            height: MediaQuery.of(context).size.height,
            color: Colors.black12,
            child: Column(
              children: [

                Container(
                  height: MediaQuery.of(context).size.height*0.75,
                  child: GridView.builder(
                      itemCount: emojiList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      itemBuilder: (BuildContext context, int index){
                        return GestureDetector(
                          child: Container(
                            margin: EdgeInsets.all(2.5),
                            child: Image.asset(emojiList[index],fit: BoxFit.fill,),

                          ),
                          onTap: (){
                            //Share.shareFiles([emojiList[index]], text: 'Beautiful card saying for you');
                            //print(imageList[index]);
                            if(myGlobal.emojiShowCount < 6){
                            myGlobal.emojiSelectedList.add(emojiList[index]);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TextOver(myGlobal.isItImageBackground == true?true:false,myGlobal.isItImageBackground == true?myGlobal.backImage:null,myGlobal.emojiSelectedList)));
                            myGlobal.emojiShowCount++;
                            }else{
                              Navigator.push(context, MaterialPageRoute(builder: (context) => TextOver(myGlobal.isItImageBackground == true?true:false,myGlobal.isItImageBackground == true?myGlobal.backImage:null,myGlobal.emojiSelectedList)));

                            }
                          },
                        );
                      }),),
              ],
            ),
          ),
        ),

      );

  }
}

