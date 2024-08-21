import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

//import 'package:esys_flutter_share/esys_flutter_share.dart';
//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:draggable_widget/draggable_widget.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_anywhere_menus/flutter_anywhere_menus.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:flutter_circular_text/circular_text/model.dart';
import 'package:flutter_circular_text/circular_text/widget.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:o_color_picker/o_color_picker.dart';
import 'package:photofilters/filters/filters.dart';

import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
//import 'package:share/share.dart';

import 'package:textover/classhub.dart';
import 'package:textover/savedImagecards.dart';
import 'package:textover/textclass.dart';
import 'adclass.dart';
import 'emojipage.dart';
import 'global.dart' as myGlobal;

import 'package:photofilters/photofilters.dart';
import 'package:image/image.dart' as imageLib;
import 'package:path/path.dart' as path;
import 'dart:math' as math;





class TextOver extends StatefulWidget {
  //MyHomePage({Key key, this.title}) : super(key: key);
  TextOver(this.gradientOrImage, this.imagePath, this.emojiUrl);
  final bool gradientOrImage;
  final File imagePath;
  final List<String> emojiUrl;

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  //final String title;

  @override
  _MyTextOverState createState() => _MyTextOverState();
}

class _MyTextOverState extends State<TextOver> {
  int _counter = 0;
  ScreenshotController screenshotController = ScreenshotController();
  File? _imagePicked;
  Color firstColor = Color(0xff800000);
  Color secondColor = Color(0xff8B4513);
  double topy = 90;
  double leftx = 20;
  double topy00 = 100.0;
  double leftx00 = 20;
  double topy11 = 110.0;
  double leftx11 = 25;
  double topy22 = 130.0;
  double leftx22 = 15;
  double topy33 = 150.0;
  double leftx33 = 10;
  double topy44 = 170.0;
  double leftx44 = 7;

  double topEy = 100.0;
  double leftEx= 20;
  double topEy0 = 100.0;
  double leftEx0 = 20;
  double topEy1 = 110.0;
  double leftEx1 = 25;
  double topEy2 = 130.0;
  double leftEx2 = 15;
  double topEy3 = 150.0;
  double leftEx3 = 10;

  double topCurvedY = 30;
  double leftCurvedX = 20;
  double topCurved1Y = 80;
  double leftCurved1X = 40;


  List<DropdownMenuItem<double>> textSizeDropdown = [];
  List<double>? textSizes;
  List<String>? textColor;
  Color initialTextColor = Colors.black;
  Color initialTextColor1 = Colors.black;
  Color initialTextColor2 = Colors.black;
  Color initialTextColor3 = Colors.black;
  Color initialTextColor4 = Colors.black;
  Color initialTextColor5 = Colors.black;
  Color initialBufferTextColor = Colors.black;
  Color initialBufferTextColor1 = Colors.black;
  Color initialBufferTextColor2 = Colors.black;
  Color initialBufferTextColor3 = Colors.black;
  Color initialBufferTextColor4 = Colors.black;
  Color initialBufferTextColor5 = Colors.black;


  List<DropdownMenuItem<double>>? items;
  String initialFontType = "Merienda";
  List<DropdownMenuItem<String>> textFontDropdown1 = [];
  List<DropdownMenuItem<String>> textColorDropdown = [];
  List<String>? textFonts;

  String dropDownSelectedItemState2 = "Start Color";
  List<DropdownMenuItem<double>>? items1;

  double dropDownSelectedItemState = 16;
  double dropDownSelectedItemState02 = 18;
  double dropDownSelectedItemState03 = 18;
  double dropDownSelectedItemState04 = 18;
  double dropDownSelectedItemState05 = 18;
  double dropDownSelectedItemState06 = 18;
  String dropDownSelectedItemState1 = "Merienda";
  String dropDownSelectedItemState12 = "Merienda";
  String dropDownSelectedItemState13 = "Merienda";
  String dropDownSelectedItemState14 = "Merienda";
  String dropDownSelectedItemState15 = "Merienda";
  String dropDownSelectedItemState16 = "Merienda";

  double dropDownSelectedItemStateCurve = 20;
  Color initialTextColorCurve = Colors.black;
  String dropDownSelectedItemState1Curve = "Merienda";

  double dropDownSelectedItemStateCurve1 = 20;
  Color initialTextColorCurve1 = Colors.black;
  String dropDownSelectedItemState1Curve1 = "Merienda";


  bool isEditing = false;
  bool isEditing1 = false;
  bool isEditing2 = false;
  bool isEditing3 = false;
  bool isEditing4 = false;
  bool isEditing5 = false;

  bool isEditingProp = false;
  bool isEditingProp1 = false;
  bool isEditingProp2 = false;
  bool isEditingProp3 = false;
  bool isEditingProp4 = false;
  bool isEditingProp5 = false;

  double emojiHeight = 100;
  double emojiHeight1 = 100;
  double emojiHeight2 = 100;
  double emojiHeight3 = 100;
  double emojiHeight4 = 100;

  double emojiWidth = 100;
  double emojiWidth1 = 100;
  double emojiWidth2 = 100;
  double emojiWidth3 = 100;
  double emojiWidth4 = 100;



  bool isEmojiEditing = false;
  bool isEmojiEditing1 = false;
  bool isEmojiEditing2 = false;
  bool isEmojiEditing3 = false;
  bool isEmojiEditing4 = false;

  bool isRotationEditing = false;
  bool isRotationEditing1 = false;
  bool isRotationEditing2 = false;
  bool isRotationEditing3 = false;
  bool isRotationEditing4 = false;
  bool isRotationEditing5 = false;

  bool isRotateCurveEditing = false;
  bool isRotateCurveEditing1 = false;

  final picker = ImagePicker();
  String yourText = "Tap twice to edit";
  String yourText1 = "Tap twice to edit";
  String yourText2 = "Tap twice to edit";
  String yourText3 = "Tap twice to edit";
  String yourText4 = "Tap twice to edit";
  String yourText5 = "Tap twice to edit";

  String yourCurvedText = "Tap twice to edit";
  String yourCurvedText1 = "Tap twice to edit";
  TextEditingController myTextController = TextEditingController();
  TextEditingController myTextController1 = TextEditingController();
  TextEditingController myTextController2 = TextEditingController();
  TextEditingController myTextController3 = TextEditingController();
  TextEditingController myTextController4 = TextEditingController();
  TextEditingController myTextController5 = TextEditingController();

  TextEditingController myCurvedTextController = TextEditingController();
  TextEditingController myCurvedTextController1 = TextEditingController();

  TextEditingController myCurvedDiameterController = TextEditingController();
  TextEditingController myCurvedDiameterController1 = TextEditingController();



  String? fileName;
  List<Filter> filters = presetFiltersList;
  File? imageFile;
  GlobalKey _bottomNavigationKey = GlobalKey();
  int _page = 0;
  DragController dragController = DragController();
  double scaleFactor = 1.2;
  double baseScale = 1.2;
  double _value = 1;
  int textShowCount = 0;

  bool myImageOrGradient = true;
  //bool text1, text2, text3, text4, text5 = false;


  bool textEditVisible = false;
  bool textEditVisible1 = false;
  bool textEditVisible2 = false;
  bool textEditVisible3 = false;
  bool textEditVisible4 = false;

  List<TextClass> textMeList = [];
  int countNow = 0;
  int degree = 0;
  int degree1 = 0;
  int degree2 = 0;
  int degree3 = 0;
  int degree4 = 0;
  int degree5 = 0;

  int degreeCurve = 0;
  int degreeCurve1 = 0;

  List<String> emojiList = [];
  List<String> myEmojiUrl = [];
  int? emojiSelectMargin;
  bool checkedValue = false;
  bool checkedValue1 = false;
  bool checkedValue2 = false;
  bool checkedValue3 = false;
  bool checkedValue4 = false;
  bool checkedValue5 = false;

  bool checkedValueCurve = false;

  bool bold = false;
  bool bold1 = false;
  bool bold2 = false;
  bool bold3 = false;
  bool bold4 = false;
  bool bold5 = false;

  bool boldCurve = false;
  bool boldCurve1 = false;

  bool italics = false;
  bool italics1 = false;
  bool italics2 = false;
  bool italics3 = false;
  bool italics4 = false;
  bool italics5 = false;

  bool italicsCurve = false;
  bool italicsCurve1 = false;

  bool curvedText = false;
  bool curvedTextEdit = false;

  bool curvedText1 = false;
  bool curvedTextEdit1 = false;

  double curveDiameter = 90;
  double curveDiameter1 = 90;
  bool isDiameterEdit = false;
  bool isDiameterEdit1 = false;





  @override
  void initState(){
    super.initState();
    imageFile = widget.imagePath;
    myImageOrGradient = widget.gradientOrImage;
    myGlobal.backImage = imageFile;
    retrieveAssetFiles();
    Ads.createInterstitialAd();
    if(myGlobal.curvedTextIsOn == true){
      // curvedText = true;
    }
    myCurvedDiameterController.text = "90";
    myCurvedDiameterController1.text = "89";

    topy = myGlobal.topy;
    leftx = myGlobal.leftx;
    topy00 = myGlobal.topy00;
    leftx00 = myGlobal.leftx00;
    topy11 = myGlobal.topy11;
    leftx11 = myGlobal.leftx11;
    topy22 = myGlobal.topy22;
    leftx22 = myGlobal.leftx22;
    topy33 = myGlobal.topy33;
    leftx33 = myGlobal.leftx33;

    /* myGlobal.textAddedList.forEach((element) {
      textShowCount++;
    });*/



    if(myGlobal.textAdded != null){
      textShowCount++;
      isEditing = true;
      yourText = myGlobal.textAdded!;
      myTextController.text = yourText;
    }
    if(myGlobal.textAdded1 != null){
      textShowCount++;
      isEditing1 = true;
      yourText1 = myGlobal.textAdded1!;
      myTextController1.text = yourText1;
    }
    if(myGlobal.textAdded2 != null){
      textShowCount++;
      isEditing2 = true;
      yourText2 = myGlobal.textAdded2!;
      myTextController2.text = yourText2;
    }
    if(myGlobal.textAdded3 != null){
      textShowCount++;
      isEditing3 = true;
      yourText3 = myGlobal.textAdded3!;
      myTextController3.text = yourText3;
    }
    if(myGlobal.textAdded4 != null){
      textShowCount++;
      isEditing4 = true;
      yourText4 = myGlobal.textAdded4!;
      myTextController4.text = yourText4;
    }
    if(myGlobal.textAdded5 != null){
      textShowCount++;
      isEditing5 = true;
      yourText5 = myGlobal.textAdded4!;
      myTextController5.text = yourText5;
    }

    topEy = myGlobal.topEy;
    leftEx = myGlobal.leftEx;
    topEy0 = myGlobal.topEy0;
    leftEx0 = myGlobal.leftEx0;
    topEy1 = myGlobal.topEy1;
    leftEx1 = myGlobal.leftEx1;
    topEy2 = myGlobal.topEy2;
    leftEx2 = myGlobal.leftEx2;
    topEy3 = myGlobal.topEy3;
    leftEx3 = myGlobal.leftEx3;

    ClassHub().mySharedPreference("chosenTextSize", "get", "").then((onValue){
      if(onValue != null){
        setState(() {
          dropDownSelectedItemState = double.parse(onValue);
        });
      }
    });



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

    ClassHub().mySharedPreference("chosenTextSize", "get", "").then((onValue){
      if(onValue != null){
        setState(() {
          //      dropDownSelectedItemState = double.parse(onValue);
        });
      }
    });

    if(myGlobal.bgFile != null){
      _imagePicked = myGlobal.bgFile;
    }





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
        //emojiSelectMargin.add(false);
      });
    }
  }



  _getDropDownMenuItems(){

    // myCountries = ClassHub().countriesList;
    // var i = 0;
    //for(String eachItem in widget.myListParamNames){
    for(double eachItem in textSizes!){
      textSizeDropdown.add( new DropdownMenuItem(
        value: eachItem,
        child: Text(eachItem.toString()),
      )
      );
    }

    for(String eachItem1 in textFonts!){
      textFontDropdown1.add( new DropdownMenuItem(
        value: eachItem1,
        child: Text(eachItem1),
      )
      );
    }

    for(String eachItem2 in textColor!){
      textColorDropdown.add( new DropdownMenuItem(
        value: eachItem2,
        child: Text(eachItem2),
      )
      );
    }

  }


  Future getImage1(context) async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if(pickedFile!=null){
      setState(() {

        imageFile = File(pickedFile.path);
        myGlobal.backImage = imageFile;
        fileName = path.basename(imageFile!.path);
      });

      var image = imageLib.decodeImage(await imageFile!.readAsBytes());
      image = imageLib.copyResize(image!, width: 600);
      Map imagefile = await Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (context) => new PhotoFilterSelector(
            title: Text("Photo Filter"),
            image: image!,
            filters: presetFiltersList,
            filename: fileName!,
            loader: Center(child: CircularProgressIndicator()),
            fit: BoxFit.contain,
          ),
        ),
      );

      setState(() {
        myGlobal.isItImageBackground = true;
        myImageOrGradient = true;
      });

      if (imagefile != null && imagefile.containsKey('image_filtered')) {
        setState(() {
          imageFile = imagefile['image_filtered'];
        });
        print(imageFile?.path);
      }
    }
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
          title: Text('Send Now or Discard?',style: TextStyle(fontSize: 14),),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
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
                      /*Ads.createInterstitialAd();
                      myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement + 1;*/
                      final box = context.findRenderObject() as RenderBox?;
                      ClassHub().saveToTemp(image).then((value){
                        Share.shareXFiles([XFile(value)], text: 'Great picture', sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,);
                      });
                      //Share.share("title", "name.jpg", image, "image/jpg",text: "Download app=>  https://play.google.com/store/apps/details?id=daily.systemsbase.motivatn");

                    },
                  ),
                ],),),

          ],
        );
      },
    );
  }

  double? dropDownItemToSupply(){

    if(curvedTextEdit == true){
      return dropDownSelectedItemStateCurve;
    }
    if(curvedTextEdit1 == true){
      return dropDownSelectedItemStateCurve1;
    }

    if(isEditingProp == true){
      return dropDownSelectedItemState;
    }
    if(isEditingProp1 == true){
      return dropDownSelectedItemState02;
    }
    if(isEditingProp2 == true){
      return dropDownSelectedItemState03;
    }
    if(isEditingProp3 == true){
      return dropDownSelectedItemState04;
    }
    if(isEditingProp4 == true){
      return dropDownSelectedItemState05;
    }
    if(isEditingProp5 == true){
      return dropDownSelectedItemState06;
    }
  }

  String? dropDownFontItemToSupply(){

    if(curvedTextEdit == true){
      return dropDownSelectedItemState1Curve;
    }
    if(curvedTextEdit1 == true){
      return dropDownSelectedItemState1Curve1;
    }

    if(isEditingProp == true){
      return dropDownSelectedItemState1;
    }
    if(isEditingProp1 == true){
      return dropDownSelectedItemState12;
    }
    if(isEditingProp2 == true){
      return dropDownSelectedItemState13;
    }
    if(isEditingProp3 == true){
      return dropDownSelectedItemState14;
    }
    if(isEditingProp4 == true){
      return dropDownSelectedItemState15;
    }
    if(isEditingProp5 == true){
      return dropDownSelectedItemState16;
    }
  }



  Color dropDownInitialColorItemToSupply(){
    if(isEditingProp == true){
      return initialBufferTextColor;
    }
    if(isEditingProp1 == true){
      return initialBufferTextColor1;
    }
    if(isEditingProp2 == true){
      return initialBufferTextColor2;
    }
    if(isEditingProp3 == true){
      return initialBufferTextColor3;
    }
    if(isEditingProp4 == true){
      return initialBufferTextColor4;
    }
    if(isEditingProp5 == true){
      return initialBufferTextColor5;
    }
    return Colors.blue;
  }

  bool? chosenCheckbox(){


    if(isEditingProp == true){
      return checkedValue;
    }
    if(isEditingProp1 == true){
      return checkedValue1;
    }
    if(isEditingProp2 == true){
      return checkedValue2;
    }
    if(isEditingProp3 == true){
      return checkedValue3;
    }
    if(isEditingProp4 == true){
      return checkedValue4;
    }
    if(isEditingProp5 == true){
      return checkedValue5;
    }else{
      // return false;
    }
  }

  bool? chosenCheckboxBold(){
    if(curvedTextEdit == true){
      return boldCurve;
    }
    if(curvedTextEdit1 == true){
      return boldCurve1;
    }

    if(isEditingProp == true){
      return bold;
    }
    if(isEditingProp1 == true){
      return bold1;
    }
    if(isEditingProp2 == true){
      return bold2;
    }
    if(isEditingProp3 == true){
      return bold3;
    }
    if(isEditingProp4 == true){
      return bold4;
    }
    if(isEditingProp5 == true){
      return bold5;
    }
  }

  bool? chosenCheckboxBoldItalics(){

    if(curvedTextEdit == true){
      return italicsCurve;
    }
    if(curvedTextEdit1 == true){
      return italicsCurve1;
    }

    if(isEditingProp == true){
      return italics;
    }
    if(isEditingProp1 == true){
      return italics1;
    }
    if(isEditingProp2 == true){
      return italics2;
    }
    if(isEditingProp3 == true){
      return italics3;
    }
    if(isEditingProp4 == true){
      return italics4;
    }
    if(isEditingProp5 == true){
      return italics5;
    }
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
          //  title: Text('Set Text Properties'),
          content:  StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                // myTextController.text = "xxxxx";
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

                          curvedTextEdit == true || curvedTextEdit1 == true?Container(
                            child: Row(children: [
                              Expanded(child: Container(child: Text("Circular Text diameter",style: TextStyle(fontSize:(myHeight(context)/100)*2.4),)),),
                              Expanded(child: Container(child: TextField(
                                controller: curvedTextEdit == true?myCurvedDiameterController:myCurvedDiameterController1,
                              ),),),
                            ],),
                          ):Container(),

                          curvedTextEdit == false && curvedTextEdit1 == false?CheckboxListTile(
                            title: Text("Background",style: TextStyle(fontSize:(myHeight(context)/100)*2.4),),
                            value: chosenCheckbox(),
                            onChanged: (value) {
                              setState(() {


                                if(isEditingProp == true){
                                  checkedValue = value!;
                                }
                                if(isEditingProp1 == true){
                                  checkedValue1 = value!;
                                }
                                if(isEditingProp2 == true){
                                  checkedValue2 = value!;
                                }
                                if(isEditingProp3 == true){
                                  checkedValue3 = value!;
                                }
                                if(isEditingProp4 == true){
                                  checkedValue4 = value!;
                                }
                                if(isEditingProp5 == true){
                                  checkedValue5 = value!;
                                }
                              });

                            },
                            controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                          ):Container(),

                          CheckboxListTile(
                            title: Text("Bold",style: TextStyle(fontSize:(myHeight(context)/100)*2.4),),
                            value: chosenCheckboxBold(),
                            onChanged: (value) {
                              setState(() {

                                if(curvedTextEdit == true){
                                  boldCurve = value!;
                                }
                                if(curvedTextEdit1 == true){
                                  boldCurve1 = value!;
                                }

                                if(isEditingProp == true){
                                  bold = value!;
                                }
                                if(isEditingProp1 == true){
                                  bold1 = value!;
                                }
                                if(isEditingProp2 == true){
                                  bold2 = value!;
                                }
                                if(isEditingProp3 == true){
                                  bold3 = value!;
                                }
                                if(isEditingProp4 == true){
                                  bold4 = value!;
                                }
                                if(isEditingProp5 == true){
                                  bold5 = value!;
                                }
                              });

                            },
                            controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                          ),

                          CheckboxListTile(
                            title: Text("Italics",style: TextStyle(fontSize:(myHeight(context)/100)*2.4),),
                            value: chosenCheckboxBoldItalics(),
                            onChanged: (value) {
                              setState(() {

                                if(curvedTextEdit == true){
                                  italicsCurve = value!;
                                }
                                if(curvedTextEdit1 == true){
                                  italicsCurve1 = value!;
                                }

                                if(isEditingProp == true){
                                  italics = value!;
                                }
                                if(isEditingProp1 == true){
                                  italics1 = value!;
                                }
                                if(isEditingProp2 == true){
                                  italics2 = value!;
                                }
                                if(isEditingProp3 == true){
                                  italics3 = value!;
                                }
                                if(isEditingProp4 == true){
                                  italics4 = value!;
                                }
                                if(isEditingProp5 == true){
                                  italics5 = value!;
                                }
                              });

                            },
                            controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                          ),



                          Row(children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Text("Text Size",style: TextStyle(fontSize:(myHeight(context)/100)*2.4),),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: DropdownButton(
                                  isDense: true,
                                  //isDense: true,
                                  style: TextStyle(fontSize: (myHeight(context)/100)*2.4,color: Colors.black,
                                      fontFamily: 'Delius'),
                                  value: dropDownItemToSupply(),
                                  items: textSizeDropdown,
                                  onChanged: (double? selectValue){
                                    setState(() {

                                      if(curvedTextEdit == true){
                                        dropDownSelectedItemStateCurve = selectValue!;
                                      }
                                      if(curvedTextEdit1 == true){
                                        dropDownSelectedItemStateCurve1 = selectValue!;
                                      }

                                      if(isEditingProp == true){
                                        dropDownSelectedItemState = selectValue!;
                                      }
                                      if(isEditingProp1 == true){
                                        dropDownSelectedItemState02 = selectValue!;
                                      }
                                      if(isEditingProp2 == true){
                                        dropDownSelectedItemState03 = selectValue!;
                                      }
                                      if(isEditingProp3 == true){
                                        dropDownSelectedItemState04 = selectValue!;
                                      }
                                      if(isEditingProp4 == true){
                                        dropDownSelectedItemState05 = selectValue!;
                                      }
                                      if(isEditingProp5 == true){
                                        dropDownSelectedItemState06 = selectValue!;
                                      }
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
                                child: Text("Font Type",style: TextStyle(fontSize:(myHeight(context)/100)*2.4),),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: DropdownButton(
                                  isDense: true,
                                  //isDense: true,
                                  style: TextStyle(fontSize: (myHeight(context)/100)*2.4,color: Colors.black,
                                      fontFamily: 'Delius'),
                                  value: dropDownFontItemToSupply(),
                                  items: textFontDropdown1,
                                  onChanged: (String? selectValue){
                                    setState(() {

                                      if(curvedTextEdit == true){
                                        dropDownSelectedItemState1Curve = selectValue!;
                                      }
                                      if(curvedTextEdit1 == true){
                                        dropDownSelectedItemState1Curve1 = selectValue!;
                                      }

                                      if(isEditingProp == true){
                                        //isEditing = false;
                                        dropDownSelectedItemState1 = selectValue!;
                                      }
                                      if(isEditingProp1 == true){
                                        dropDownSelectedItemState12 = selectValue!;
                                      }
                                      if(isEditingProp2 == true){
                                        dropDownSelectedItemState13 = selectValue!;
                                      }
                                      if(isEditingProp3 == true){
                                        dropDownSelectedItemState14 = selectValue!;
                                      }
                                      if(isEditingProp4 == true){
                                        dropDownSelectedItemState15 = selectValue!;
                                      }
                                      if(isEditingProp5 == true){
                                        dropDownSelectedItemState16 = selectValue!;
                                      }
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
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
                    setState(() {

                    });
                    // Share.file("title", "name.jpg", image, "image/jpg");
                  },
                ),
              ],),),

          ],
        );
      },
    );
  }


  Future<void> _displayTextColorProperty() {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          //  title: Text('Set Text Properties'),
          content:  StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                // myTextController.text = "xxxxx";
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
                              //initialColor: dropDownInitialColorItemToSupply(),
                              onChanged: (color) => {
                                setState((){
                                  // initialTextColor = color;
                                  //initialBufferTextColor = color;

                                  if(curvedTextEdit == true){
                                    //isEditing = false;
                                    initialTextColorCurve = color;
                                  }

                                  if(curvedTextEdit1 == true){
                                    //isEditing = false;
                                    initialTextColorCurve1 = color;
                                  }

                                  if(isEditingProp == true){
                                    //isEditing = false;
                                    initialTextColor = color;
                                  }
                                  if(isEditingProp1 == true){
                                    initialTextColor1 = color;
                                  }
                                  if(isEditingProp2 == true){
                                    initialTextColor2 = color;
                                  }
                                  if(isEditingProp3 == true){
                                    initialTextColor3 = color;
                                  }
                                  if(isEditingProp4 == true){
                                    initialTextColor4 = color;
                                  }
                                  if(isEditingProp5 == true){
                                    initialTextColor5 = color;
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
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
                    // Share.file("title", "name.jpg", image, "image/jpg");
                    setState(() {

                    });



                  },
                ),
              ],),),

          ],
        );
      },
    );
  }


  Future<void> emojiDialog() {
    String emojiUrlBuffer = "";
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          //  title: Text('Set Text Properties'),
          content:  StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                // myTextController.text = "xxxxx";
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
                            height: MediaQuery.of(context).size.height*0.75,
                            child: GridView.builder(
                                itemCount: emojiList.length,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                                itemBuilder: (BuildContext context, int index){
                                  return GestureDetector(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: emojiSelectMargin == index?Border.all(color: Colors.red,):null,
                                      ),
                                      margin: EdgeInsets.all(2.5),
                                      child: Image.asset(emojiList[index],fit: BoxFit.fill,),

                                    ),
                                    onTap: (){
                                      //Share.shareFiles([emojiList[index]], text: 'Beautiful card saying for you');
                                      //print(imageList[index]);
                                      // Navigator.of(context).pop(true);

                                      if(myGlobal.emojiShowCount < 6){
                                        setState((){
                                          emojiSelectMargin = index;
                                          //myEmojiUrl.add(emojiList[index]);
                                          emojiUrlBuffer = emojiList[index];
                                          //myGlobal.emojiSelectedList.add(emojiList[index]);
                                          // Navigator.push(context, MaterialPageRoute(builder: (context) => TextOver(myGlobal.isItImageBackground == true?true:false,myGlobal.isItImageBackground == true?myGlobal.backImage:null,myGlobal.emojiSelectedList)));

                                        });
                                        //Navigator.of(context).pop(true);


                                      }else{
                                        // Navigator.push(context, MaterialPageRoute(builder: (context) => TextOver(myGlobal.isItImageBackground == true?true:false,myGlobal.isItImageBackground == true?myGlobal.backImage:null,myGlobal.emojiSelectedList)));
                                        //       Navigator.of(context).pop();
                                      }
                                    },
                                  );
                                }),),



                        ],
                      ),),
                  ),
                );}),
          actions: <Widget>[
            Container(
              // height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                TextButton(
                  child: Text('DISCARD'),
                  onPressed: () {
                    Navigator.of(context).pop();

                  },
                ),

                SizedBox(width: 20,),

                TextButton(
                  child: Text('SELECT'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    setState(() {
                      if(emojiUrlBuffer != null){
                        myEmojiUrl.add(emojiUrlBuffer);
                        myGlobal.emojiSelectedList.add(emojiUrlBuffer);
                        myGlobal.emojiShowCount++;
                      }
                    });



                  },
                ),
              ],),),

          ],
        );
      },
    );
  }



  Future<void> _displayCurvedTextProperty() {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          //  title: Text('Set Text Properties'),
          content:  StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                // myTextController.text = "xxxxx";
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
                            //height: 100,
                            child: OColorPicker(
                              selectedColor: initialBufferTextColor,
                              colors: primaryColorsPalette,
                              onColorChange: (color) {
                                setState(() {
                                  initialBufferTextColor = color;
                                });
                                // Navigator.of(context).pop();
                              },
                            ),),

                          /*Container(
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
                          ),*/

                          // SizedBox(height: 15,),
                          //sssssssssssss
                          isEditing == true?Container(
                            //height: 100,
                            child: TextField(controller: myTextController,
                              keyboardType: TextInputType.multiline,
                              minLines: 1,
                              maxLines: 7,
                              style:
                              TextStyle(fontSize: dropDownSelectedItemState,color: initialTextColor,
                                  fontFamily: dropDownSelectedItemState1,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),):Container(),

                          isEditing1 == true?Container(
                            height: 100,
                            child: TextField(controller: myTextController1,
                              keyboardType: TextInputType.multiline,
                              minLines: 1,
                              maxLines: 7,
                              style:
                              TextStyle(fontSize: dropDownSelectedItemState02,color: initialTextColor1,
                                  fontFamily: dropDownSelectedItemState12,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),):Container(),

                          isEditing2 == true?Container(
                            height: 100,
                            child: TextField(controller: myTextController2,
                              keyboardType: TextInputType.multiline,
                              minLines: 1,
                              maxLines: 7,
                              style:
                              TextStyle(fontSize: dropDownSelectedItemState03,color: initialTextColor2,
                                  fontFamily: dropDownSelectedItemState13,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),):Container(),

                          isEditing3 == true?Container(
                            height: 100,
                            child: TextField(controller: myTextController3,
                              keyboardType: TextInputType.multiline,
                              minLines: 1,
                              maxLines: 7,
                              style:
                              TextStyle(fontSize: dropDownSelectedItemState04,color: initialTextColor3,
                                  fontFamily: dropDownSelectedItemState14,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),):Container(),

                          isEditing4 == true?Container(
                            height: 100,
                            child: TextField(controller: myTextController4,
                              keyboardType: TextInputType.multiline,
                              minLines: 1,
                              maxLines: 7,
                              style:
                              TextStyle(fontSize: dropDownSelectedItemState05,color: initialTextColor4,
                                  fontFamily: dropDownSelectedItemState15,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),):Container(),

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
                                  value: dropDownItemToSupply(),
                                  items: textSizeDropdown,
                                  onChanged: (double? selectValue){
                                    setState(() {
                                      if(isEditing == true){
                                        dropDownSelectedItemState = selectValue!;
                                      }
                                      if(isEditing1 == true){
                                        dropDownSelectedItemState02 = selectValue!;
                                      }
                                      if(isEditing2 == true){
                                        dropDownSelectedItemState03 = selectValue!;
                                      }
                                      if(isEditing3 == true){
                                        dropDownSelectedItemState04 = selectValue!;
                                      }
                                      if(isEditing4 == true){
                                        dropDownSelectedItemState05 = selectValue!;
                                      }
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
                                  value: dropDownFontItemToSupply(),
                                  items: textFontDropdown1,
                                  onChanged: (String? selectValue){
                                    setState(() {
                                      if(isEditing == true){
                                        //isEditing = false;
                                        dropDownSelectedItemState1 = selectValue!;
                                      }
                                      if(isEditing1 == true){
                                        dropDownSelectedItemState12 = selectValue!;
                                      }
                                      if(isEditing2 == true){
                                        dropDownSelectedItemState13 = selectValue!;
                                      }
                                      if(isEditing3 == true){
                                        dropDownSelectedItemState14 = selectValue!;
                                      }
                                      if(isEditing4 == true){
                                        dropDownSelectedItemState15 = selectValue!;
                                      }
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
                    if(isEditing == true){
                      setState(() {
                        isEditing = false;
                      });
                    }
                    if(isEditing1 == true){
                      setState(() {
                        isEditing1 = false;
                      });
                    }
                    if(isEditing2 == true){
                      setState(() {
                        isEditing2 = false;
                      });
                    }
                    if(isEditing3 == true){
                      setState(() {
                        isEditing3 = false;
                      });
                    }
                    if(isEditing4 == true){
                      setState(() {
                        isEditing4 = false;
                      });
                    }
                    Navigator.of(context).pop();
                    /*setState(() {
                      initialTextColor = initialBufferTextColor;
                    });*/
                  },
                ),

                TextButton(
                  child: Text('APPLY'),
                  onPressed: () {
                    if(isEditing == true){
                      setState(() {
                        yourText = myTextController.text;
                        initialTextColor = initialBufferTextColor;
                        isEditing = false;
                      });

                    }
                    if(isEditing1 == true){
                      setState(() {
                        yourText1 = myTextController1.text;
                        initialTextColor1 = initialBufferTextColor;
                        isEditing1 = false;
                      });

                    }
                    if(isEditing2 == true){
                      setState(() {
                        yourText2 = myTextController2.text;
                        initialTextColor2 = initialBufferTextColor;
                        isEditing2 = false;
                      });

                    }
                    if(isEditing3 == true){
                      setState(() {
                        yourText3 = myTextController3.text;
                        initialTextColor3 = initialBufferTextColor;
                        isEditing3 = false;
                      });

                    }
                    if(isEditing4 == true){
                      setState(() {
                        yourText4 = myTextController4.text;
                        initialTextColor4 = initialBufferTextColor;
                        isEditing4 = false;
                      });

                    }
                    Navigator.of(context).pop();
                    // Share.file("title", "name.jpg", image, "image/jpg");



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
          title: Text('Set Color Gradient',style: TextStyle(fontSize: (myHeight(context)/100)*2.6,color: Colors.black,
              fontFamily: 'Delius'),),
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
                              style: TextStyle(fontSize: (myHeight(context)/100)*2.4,color: Colors.black,
                                  fontFamily: 'Delius'),
                              value: dropDownSelectedItemState2,
                              items: textColorDropdown,
                              onChanged: (String? selectValue){
                                setState(() {
                                  dropDownSelectedItemState2 = selectValue!;
                                });
                                // Navigator.of(context).pop();

                              },
                            ),
                          ),

                          SizedBox(height: 20,),

                          OColorPicker(
                            selectedColor: dropDownSelectedItemState2 == "Start Color"?firstColor:secondColor,
                            colors: primaryColorsPalette,
                            onColorChange: (color) {
                              setState((){
                                if(dropDownSelectedItemState2 == "Start Color") {
                                  firstColor = color;
                                  print(firstColor);
                                  //dropDownSelectedItemState2 = "End Color";
                                }else{
                                  secondColor = color;
                                  print(secondColor);
                                }


                              });
                            },
                          ),

                          /* Container(
                            //width: MediaQuery.of(context).size.width,

                            child: CircleColorPicker(
                              initialColor: firstColor,
                              onChanged: (color) => {
                                setState((){
                                  if(dropDownSelectedItemState2 == "Start Color") {
                                    firstColor = color;
                                    print(firstColor);
                                  }else{
                                    secondColor = color;
                                    print(secondColor);
                                  }


                                })
                              },
                              size: const Size(180, 180),
                              strokeWidth: 4,
                              thumbSize: 26,
                            ),
                          ),*/


                        ],
                      ),),
                  ),
                );}),
          actions: <Widget>[
            Container(
              // height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                TextButton(
                  child: Text('DISCARD'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),

                TextButton(
                  child: Text('APPLY'),
                  onPressed: () {
                    print(firstColor);
                    print(secondColor);

                    ClassHub().mySharedPreference("myFirstColor", "set", firstColor.toString());
                    ClassHub().mySharedPreference("mySecondColor", "set", secondColor.toString());
                    setState(() {
                      myGlobal.bgFile = null;
                      _imagePicked = null;
                      imageFile = null;
                      myImageOrGradient = false;
                      myGlobal.isItImageBackground = false;
                      Navigator.of(context).pop();
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
        _imagePicked = File(pickedFile.path);
        myGlobal.bgFile = _imagePicked;
      } else {
        print('No image selected.');
      }
    });
  }

  shrinkStretchEmoji(double value){
    double x,y;
    if(isEmojiEditing == true){
      setState(() {
        emojiHeight = 100*value;
        emojiWidth = 100*value;
      });
    }
    if(isEmojiEditing1 == true){
      setState(() {
        emojiHeight1 = 100*value;
        emojiWidth1 = 100*value;
      });
    }
    if(isEmojiEditing2 == true){
      setState(() {
        emojiHeight2 = 100*value;
        emojiWidth2 = 100*value;
      });
    }
    if(isEmojiEditing3 == true){
      setState(() {
        emojiHeight3 = 100*value;
        emojiWidth3 = 100*value;
      });
    }
    if(isEmojiEditing4 == true){
      setState(() {
        emojiHeight4 = 100*value;
        emojiWidth4 = 100*value;
      });
    }

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

  PopupMenuButton myMenuPopUp(){
    return PopupMenuButton<int>(
      initialValue: 0,
      onSelected: (item){
        if(item == 1){

        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 0,
          //child: GestureDetector(
          child:  Text("Text settings",style: TextStyle(fontSize: isItTablet()==false?15:20),),
        ),

        PopupMenuItem(
          value: 1,
          //child: GestureDetector(
          child:  Text("Background Settings",style: TextStyle(fontSize: isItTablet()==false?15:20),),
        ),
      ],
    );
  }





  Widget TextArt(String text, double fontsize, String fontType, BuildContext context){

    print(textMeList.length);
    print(textMeList.length-1);
    return Positioned(
      top: topy,
      left: leftx,
      child: GestureDetector(
        child: textMeList[textMeList.length-1].myText(text, fontsize, initialTextColor, fontType, context),
        onPanUpdate: (details){
          setState(() {
            //element.changeCoord(details.globalPosition.dx-(myHeight(context)/100)*28, details.globalPosition.dy-(myHeight(context)/100)*28);
            topy = details.globalPosition.dy-(myHeight(context)/100)*28;
            leftx = details.globalPosition.dx-(myHeight(context)/100)*28;
          });
        },
      ),

    );



    //   });
    // return Container();
  }

  int? whichTextDegree(){

    if(isRotateCurveEditing == true){
      return degreeCurve;
    }
    if(isRotateCurveEditing1 == true){
      return degreeCurve1;
    }
    if(isRotationEditing == true){
      return degree;
    }
    if(isRotationEditing1 == true){
      return degree1;
    }
    if(isRotationEditing2 == true){
      return degree2;
    }
    if(isRotationEditing3 == true){
      return degree3;
    }
    if(isRotationEditing4 == true){
      return degree4;
    }
    if(isRotationEditing5 == true){
      return degree5;
    }
  }

  double? whichCurveDiameter(){

    if(curvedTextEdit == true){
      return curveDiameter;
    }
    if(curvedTextEdit1 == true){
      return curveDiameter1;
    }

  }

  Widget returnAppBar(){
    if(isEditingProp == false && isEditingProp1 == false  && isEditingProp2 == false
        && isEditingProp3 == false  && isEditingProp4 == false  && isEditingProp5 == false){

    }

    if(isEmojiEditing == true || isEmojiEditing1 == true || isEmojiEditing2 == true ||
        isEmojiEditing3 == true || isEmojiEditing4 == true){
      return Row(mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              margin: EdgeInsets.only(right: 12),
              child: GestureDetector(
                child: Icon(Icons.delete),
                onTap: (){
                  setState(() {
                    if(curvedTextEdit == true){
                      curvedText = false;
                      curvedTextEdit = false;
                    }
                    if(isEmojiEditing == true){
                      myEmojiUrl.removeWhere((element) => myEmojiUrl[0] == element);
                      myGlobal.emojiShowCount--;
                      isEmojiEditing = false;
                      isEmojiEditing1 = false;
                      isEmojiEditing2 = false;
                      isEmojiEditing3 = false;
                      isEmojiEditing4 = false;
                    }
                    if(isEmojiEditing1 == true){
                      myEmojiUrl.removeWhere((element) => myEmojiUrl[1] == element);
                      myGlobal.emojiShowCount--;
                      isEmojiEditing = false;
                      isEmojiEditing1 = false;
                      isEmojiEditing2 = false;
                      isEmojiEditing3 = false;
                      isEmojiEditing4 = false;
                    }
                    if(isEmojiEditing2 == true){
                      myEmojiUrl.removeWhere((element) => myEmojiUrl[2] == element);
                      myGlobal.emojiShowCount--;
                      isEmojiEditing = false;
                      isEmojiEditing1 = false;
                      isEmojiEditing2 = false;
                      isEmojiEditing3 = false;
                      isEmojiEditing4 = false;
                    }
                    if(isEmojiEditing3 == true){
                      myEmojiUrl.removeWhere((element) => myEmojiUrl[3] == element);
                      myGlobal.emojiShowCount--;
                      isEmojiEditing = false;
                      isEmojiEditing1 = false;
                      isEmojiEditing2 = false;
                      isEmojiEditing3 = false;
                      isEmojiEditing4 = false;
                    }
                    if(isEmojiEditing4 == true){
                      myEmojiUrl.removeWhere((element) => myEmojiUrl[4] == element);
                      myGlobal.emojiShowCount--;
                      isEmojiEditing = false;
                      isEmojiEditing1 = false;
                      isEmojiEditing2 = false;
                      isEmojiEditing3 = false;
                      isEmojiEditing4 = false;
                    }

                  });
                },
              ),
            ),
          ]
      );
    }else{
      return Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 7),
            child: GestureDetector(
              child: Icon(Icons.save),
              onTap: (){
                setState(() {
                  isEmojiEditing = false;
                  isEmojiEditing1 = false;
                  isEmojiEditing2 = false;
                  isEmojiEditing3 = false;
                  isEmojiEditing4 = false;
                });
                screenshotController.capture(delay: Duration(milliseconds: 10)).then((Uint8List? image){
                  ClassHub().saveMediaCard(image!);
                }).catchError((onError) {
                  //   print(onError);
                });


              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 15),
            child: GestureDetector(
              child: Icon(Icons.share),
              onTap: (){
                //Ads.createInterstitialAd();
                setState(() {
                  isEmojiEditing = false;
                  isEmojiEditing1 = false;
                  isEmojiEditing2 = false;
                  isEmojiEditing3 = false;
                  isEmojiEditing4 = false;
                });
                screenshotController.capture(delay: Duration(milliseconds: 10)).then((Uint8List? image){
                  //_imageFile = image;
                  //////////////////
                  if(Ads.checkAdIntervals() == true){
                    Ads.showInterstitialAd();
                    myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement +1;

                    Ads.delayAdDialog(context);
                    Future.delayed(Duration(seconds: 0),(){
                      Navigator.of(context).pop();
                      _displayImageSnapshot(image!);
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => TextOver(false,null,null)));

                    });
                  }else{
                    _displayImageSnapshot(image!);
                    myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement +1;
                  }

                  ///////////////////
                }).catchError((onError) {
                  //   print(onError);
                });
              },
            ),
          ),
        ],
      );
    }

  }

  myFontSize(BuildContext context){
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

  myHeight(BuildContext context){
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
      appBar: isEditingProp == false && isEditingProp1 == false  && isEditingProp2 == false
          && isEditingProp3 == false  && isEditingProp4 == false  && isEditingProp5 == false?AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("TEXTOVER",),
        backgroundColor: Colors.amber,
        actions: [
          isEmojiEditing == true || isEmojiEditing1 == true || isEmojiEditing2 == true ||
              isEmojiEditing3 == true || isEmojiEditing4 == true || curvedTextEdit == true  || curvedTextEdit1 == true?Row(mainAxisAlignment: MainAxisAlignment.center,
              children:[
                curvedTextEdit == true || curvedTextEdit1 == true?Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        child: Icon(Icons.colorize),
                        onTap: (){
                          setState(() {
                            _displayTextColorProperty();
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        child: Icon(Icons.delete),
                        onTap: (){
                          setState(() {
                            if(curvedTextEdit == true) {curvedText = false;}
                            if(curvedTextEdit1 == true) {curvedText1 = false;}
                            ///////////////////////////

                            isEditingProp = false; isEditingProp1 = false; isEditingProp2 = false;
                            isEditingProp3 = false; isEditingProp4 = false; isEditingProp5 = false;
                            isEditingProp5 = false;
                            isRotationEditing = false;
                            isRotationEditing1 = false;
                            isRotationEditing2 = false;
                            isRotationEditing3 = false;
                            isRotationEditing4 = false;
                            isRotationEditing5 = false;

                            if(curvedTextEdit == true){curvedTextEdit = false;
                            isRotateCurveEditing = false;}
                            if(curvedTextEdit1 == true){curvedTextEdit1 = false;
                            isRotateCurveEditing1 = false;}

                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        child: Icon(Icons.text_format),
                        onTap: (){
                          //Ads.createInterstitialAd();
                          setState(() {
                            _displayTextProperty();
                          });

                        },
                      ),
                    ),

                    /* curvedTextEdit == true || curvedTextEdit1 == true?Container(
                     // margin: EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        child: Icon(Icons.security_rounded),
                        onTap: (){
                          //Ads.createInterstitialAd();
                          setState(() {
                            //sssss
                            if(curvedTextEdit == true){
                              isDiameterEdit = true;
                            }else if(curvedTextEdit1 == true){
                              isDiameterEdit1 = true;
                            }
                          });
                        },
                      ),
                    ):Container(),*/

                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        child: Icon(Icons.rotate_right),
                        onTap: (){
                          //Ads.createInterstitialAd();
                          setState(() {

                            if(curvedTextEdit == true){
                              isRotateCurveEditing = true;
                            }
                            if(curvedTextEdit1 == true){
                              isRotateCurveEditing1 = true;
                            }

                            if(isEditingProp == true){
                              isRotationEditing = true;
                            }
                            if(isEditingProp1 == true){
                              isRotationEditing1 = true;
                            }
                            if(isEditingProp2 == true){
                              isRotationEditing2 = true;
                            }
                            if(isEditingProp3 == true){
                              isRotationEditing3 = true;
                            }
                            if(isEditingProp4 == true){
                              isRotationEditing4 = true;
                            }
                            if(isEditingProp5 == true){
                              isRotationEditing5 = true;
                            }

                          });
                        },
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        child: Icon(Icons.done),
                        onTap: (){
                          FocusScope.of(context).requestFocus(new FocusNode());
                          setState(() {

                            if(curvedTextEdit == true){curvedTextEdit = false;
                            isRotateCurveEditing = false;}
                            if(curvedTextEdit1 == true){curvedTextEdit1 = false;
                            isRotateCurveEditing1 = false;}
                         //////////////////////



                          });



                        },
                      ),
                    ),
                  ],):Container(
                  margin: EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    child: Icon(Icons.delete),
                    onTap: (){
                      setState(() {
                        if(curvedTextEdit == true){
                          curvedText = false;
                          curvedTextEdit = false;
                        }
                        if(isEmojiEditing == true){
                          myEmojiUrl.removeWhere((element) => myEmojiUrl[0] == element);
                          myGlobal.emojiShowCount--;
                          isEmojiEditing = false;
                          isEmojiEditing1 = false;
                          isEmojiEditing2 = false;
                          isEmojiEditing3 = false;
                          isEmojiEditing4 = false;
                        }
                        if(isEmojiEditing1 == true){
                          myEmojiUrl.removeWhere((element) => myEmojiUrl[1] == element);
                          myGlobal.emojiShowCount--;
                          isEmojiEditing = false;
                          isEmojiEditing1 = false;
                          isEmojiEditing2 = false;
                          isEmojiEditing3 = false;
                          isEmojiEditing4 = false;
                        }
                        if(isEmojiEditing2 == true){
                          myEmojiUrl.removeWhere((element) => myEmojiUrl[2] == element);
                          myGlobal.emojiShowCount--;
                          isEmojiEditing = false;
                          isEmojiEditing1 = false;
                          isEmojiEditing2 = false;
                          isEmojiEditing3 = false;
                          isEmojiEditing4 = false;
                        }
                        if(isEmojiEditing3 == true){
                          myEmojiUrl.removeWhere((element) => myEmojiUrl[3] == element);
                          myGlobal.emojiShowCount--;
                          isEmojiEditing = false;
                          isEmojiEditing1 = false;
                          isEmojiEditing2 = false;
                          isEmojiEditing3 = false;
                          isEmojiEditing4 = false;
                        }
                        if(isEmojiEditing4 == true){
                          myEmojiUrl.removeWhere((element) => myEmojiUrl[4] == element);
                          myGlobal.emojiShowCount--;
                          isEmojiEditing = false;
                          isEmojiEditing1 = false;
                          isEmojiEditing2 = false;
                          isEmojiEditing3 = false;
                          isEmojiEditing4 = false;
                        }

                      });
                    },
                  ),
                ),
              ]
          ):Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                child: GestureDetector(
                  child: Icon(Icons.save),
                  onTap: (){
                    setState(() {
                      isEmojiEditing = false;
                      isEmojiEditing1 = false;
                      isEmojiEditing2 = false;
                      isEmojiEditing3 = false;
                      isEmojiEditing4 = false;
                    });
                    screenshotController.capture(delay: Duration(milliseconds: 10)).then((Uint8List? image){
                      ClassHub().saveMediaCard(image!);
                    }).catchError((onError) {
                      //   print(onError);
                    });


                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: GestureDetector(
                  child: Icon(Icons.share),
                  onTap: (){
                    //Ads.createInterstitialAd();
                    setState(() {
                      isEmojiEditing = false;
                      isEmojiEditing1 = false;
                      isEmojiEditing2 = false;
                      isEmojiEditing3 = false;
                      isEmojiEditing4 = false;
                    });
                    screenshotController.capture(delay: Duration(milliseconds: 10)).then((Uint8List? image){
                      //_imageFile = image;
                      //////////////////
                      _displayImageSnapshot(image!);
                      ///////////////////
                    }).catchError((onError) {
                      //   print(onError);
                    });
                  },
                ),
              ),
            ],
          ),

        ],
      ):AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        // title: Text("Editing"),
        backgroundColor: Colors.amber,
        leading: Container(),
        actions: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                child: GestureDetector(
                  child: Icon(Icons.colorize),
                  onTap: (){
                    setState(() {
                      _displayTextColorProperty();
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: GestureDetector(
                  child: Icon(Icons.delete),
                  onTap: (){
                    setState(() {
                      if(isEditingProp == true){
                        isEditing = false;
                      }
                      if(isEditingProp1 == true){
                        isEditing1 = false;
                      }
                      if(isEditingProp2 == true){
                        isEditing2 = false;
                      }
                      if(isEditingProp3 == true){
                        isEditing3 = false;
                      }
                      if(isEditingProp4 == true){
                        isEditing4 = false;
                      }
                      if(isEditingProp5 == true){
                        isEditing5 = false;
                      }

                      ///////////////////////////////

                      isEditingProp = false; isEditingProp1 = false; isEditingProp2 = false;
                      isEditingProp3 = false; isEditingProp4 = false; isEditingProp5 = false;
                      isEditingProp5 = false;
                      isRotationEditing = false;
                      isRotationEditing1 = false;
                      isRotationEditing2 = false;
                      isRotationEditing3 = false;
                      isRotationEditing4 = false;
                      isRotationEditing5 = false;
                    });



                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: GestureDetector(
                  child: Icon(Icons.text_format),
                  onTap: (){
                    //Ads.createInterstitialAd();
                    setState(() {
                      _displayTextProperty();
                    });

                  },
                ),
              ),

              /* Container(
                margin: EdgeInsets.only(right: 18),
                child: GestureDetector(
                  child: Icon(Icons.security_rounded),
                  onTap: (){
                    //Ads.createInterstitialAd();
                    setState(() {
                     //sssss
                    });
                  },
                ),
              ),*/

              Container(
                margin: EdgeInsets.only(right: 20),
                child: GestureDetector(
                  child: Icon(Icons.rotate_right),
                  onTap: (){
                    //Ads.createInterstitialAd();
                    setState(() {
                      if(isEditingProp == true){
                        isRotationEditing = true;
                      }
                      if(isEditingProp1 == true){
                        isRotationEditing1 = true;
                      }
                      if(isEditingProp2 == true){
                        isRotationEditing2 = true;
                      }
                      if(isEditingProp3 == true){
                        isRotationEditing3 = true;
                      }
                      if(isEditingProp4 == true){
                        isRotationEditing4 = true;
                      }
                      if(isEditingProp5 == true){
                        isRotationEditing5 = true;
                      }

                    });
                  },
                ),
              ),

              Container(
                margin: EdgeInsets.only(right: 20),
                child: GestureDetector(
                  child: Icon(Icons.done),
                  onTap: (){
                    FocusScope.of(context).requestFocus(new FocusNode());
                    setState(() {
                      isEditingProp = false; isEditingProp1 = false; isEditingProp2 = false;
                      isEditingProp3 = false; isEditingProp4 = false; isEditingProp5 = false;
                      isEditingProp5 = false;
                      isRotationEditing = false;
                      isRotationEditing1 = false;
                      isRotationEditing2 = false;
                      isRotationEditing3 = false;
                      isRotationEditing4 = false;
                      isRotationEditing5 = false;
                    });



                  },
                ),
              ),
            ],),

        ],
      ),
      body: Container(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        //height: 400,
        color: Color(0xffFFAEBD7),
        child: GestureDetector(

          onTap: (){
            if(FocusScope.of(context).isFirstFocus) {
              FocusScope.of(context).requestFocus(new FocusNode());
            }
            setState(() {
              isEmojiEditing = false;
              isEmojiEditing1 = false;
              isEmojiEditing2 = false;
              isEmojiEditing3 = false;
              isEmojiEditing4 = false;

              curvedTextEdit = false;
              curvedTextEdit1 = false;
            });
          },
          child: Column(
            children: [

              Container(
                height: isEmojiEditing == true || isEmojiEditing1 == true || isEmojiEditing2 == true || isEmojiEditing3 == true || isEmojiEditing4 ||
                    isRotationEditing == true || isRotationEditing1 == true || isRotationEditing2 == true || isRotationEditing3 == true
                    || isRotationEditing4 == true || isRotationEditing5 == true || isRotateCurveEditing == true
                    || isRotateCurveEditing1 == true?
                MediaQuery.of(context).size.height*0.63:MediaQuery.of(context).size.height*0.73,
                child:Screenshot(
                  controller: screenshotController,
                  child: Container(
                    decoration:imageFile == null && myImageOrGradient == false? BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [firstColor, secondColor])):BoxDecoration(),
                    child: Stack(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        imageFile != null && myImageOrGradient == true?Image.file(imageFile!,height: MediaQuery.of(context).size.height,fit: BoxFit.fill,):Container(),

                        //////////////////////////////////////////////////////////////////
                        curvedText == true?Positioned(
                          top: topCurvedY,
                          left: leftCurvedX,
                          //child: GestureDetector(
                          child: Transform.rotate(
                            angle: math.pi/180 * degreeCurve,
                            child:Container(
                              child: curvedTextEdit == true?
                              GestureDetector(
                                child:Container(
                                  height: 70,
                                  width: MediaQuery.of(context).size.width,
                                  //myCurvedTextController
                                  //curvedTextEdit = true;

                                  child:TextField(
                                    controller: myCurvedTextController,
                                    onTap: (){
                                      setState(() {
                                        curvedTextEdit = true;
                                      });
                                    },
                                    style:TextStyle(fontSize: dropDownSelectedItemStateCurve,color: initialTextColorCurve,
                                        fontFamily: dropDownSelectedItemState1Curve,fontWeight: boldCurve == true?FontWeight.bold:FontWeight.normal, fontStyle:italicsCurve == true?FontStyle.italic:FontStyle.normal),
                                  ),),
                                onPanUpdate: (details){
                                  setState(() {
                                    //element.changeCoord(details.globalPosition.dx-(myHeight(context)/100)*28, details.globalPosition.dy-(myHeight(context)/100)*28);
                                    topCurvedY = details.globalPosition.dy-(myHeight(context)/100)*28;
                                    leftCurvedX = details.globalPosition.dx-(myHeight(context)/100)*28;
                                  });
                                },
                              ):GestureDetector(
                                child:CircularText(
                                  children: [
                                    TextItem(
                                      text: Text(
                                        myCurvedTextController.text.toUpperCase(),
                                        style: TextStyle(fontSize: dropDownSelectedItemStateCurve,color: initialTextColorCurve,
                                            fontFamily: dropDownSelectedItemState1Curve,fontWeight: boldCurve == true?FontWeight.bold:FontWeight.normal, fontStyle:italicsCurve == true?FontStyle.italic:FontStyle.normal),
                                      ),
                                      space: 12,
                                      startAngle: -90,
                                      startAngleAlignment: StartAngleAlignment.center,
                                      direction: CircularTextDirection.clockwise,
                                    ),

                                  ],
                                  radius: double.parse(myCurvedDiameterController.text),
                                  position: CircularTextPosition.inside,
                                  //backgroundPaint: Paint()..color = Colors.grey.shade200,
                                ),

                                onTap: (){
                                  setState((){
                                    if(curvedTextEdit1 == false) {curvedTextEdit = true;}
                                  });
                                },

                                onPanUpdate: (details){
                                  setState(() {
                                    //element.changeCoord(details.globalPosition.dx-(myHeight(context)/100)*28, details.globalPosition.dy-(myHeight(context)/100)*28);
                                    topCurvedY = details.globalPosition.dy-(myHeight(context)/100)*28;
                                    leftCurvedX = details.globalPosition.dx-(myHeight(context)/100)*28;
                                  });
                                },

                              ),

                            ),),
                          // ),




                        ):Container(),

                        curvedText1 == true?Positioned(
                          top: topCurved1Y,
                          left: leftCurved1X,
                          //child: GestureDetector(
                          child: Transform.rotate(
                            angle: math.pi/180 * degreeCurve1,
                            child:Container(
                              child: curvedTextEdit1 == true?
                              GestureDetector(
                                child:Container(
                                  height: 70,
                                  width: MediaQuery.of(context).size.width,
                                  //myCurvedTextController
                                  //curvedTextEdit = true;

                                  child:TextField(
                                    controller: myCurvedTextController1,
                                    onTap: (){
                                      setState(() {
                                        curvedTextEdit1 = true;
                                      });
                                    },
                                    style:TextStyle(fontSize: dropDownSelectedItemStateCurve1,color: initialTextColorCurve1,
                                        fontFamily: dropDownSelectedItemState1Curve1,fontWeight: boldCurve1 == true?FontWeight.bold:FontWeight.normal, fontStyle:italicsCurve1 == true?FontStyle.italic:FontStyle.normal),
                                  ),),
                                onPanUpdate: (details){
                                  setState(() {
                                    //element.changeCoord(details.globalPosition.dx-(myHeight(context)/100)*28, details.globalPosition.dy-(myHeight(context)/100)*28);
                                    topCurved1Y = details.globalPosition.dy-(myHeight(context)/100)*28;
                                    leftCurved1X = details.globalPosition.dx-(myHeight(context)/100)*28;
                                  });
                                },
                              ):GestureDetector(
                                child:CircularText(
                                  children: [
                                    TextItem(
                                      text: Text(
                                        myCurvedTextController1.text.toUpperCase(),
                                        style: TextStyle(fontSize: dropDownSelectedItemStateCurve1,color: initialTextColorCurve1,
                                            fontFamily: dropDownSelectedItemState1Curve1,fontWeight: boldCurve1 == true?FontWeight.bold:FontWeight.normal, fontStyle:italicsCurve1 == true?FontStyle.italic:FontStyle.normal),
                                      ),
                                      space: 12,
                                      startAngle: -90,
                                      startAngleAlignment: StartAngleAlignment.center,
                                      direction: CircularTextDirection.clockwise,
                                    ),

                                  ],
                                  radius: double.parse(myCurvedDiameterController1.text),
                                  position: CircularTextPosition.inside,
                                  //backgroundPaint: Paint()..color = Colors.grey.shade200,
                                ),

                                onTap: (){
                                  setState((){
                                    if(curvedTextEdit == false){curvedTextEdit1 = true;}
                                  });
                                },

                                onPanUpdate: (details){
                                  setState(() {
                                    //element.changeCoord(details.globalPosition.dx-(myHeight(context)/100)*28, details.globalPosition.dy-(myHeight(context)/100)*28);
                                    topCurved1Y = details.globalPosition.dy-(myHeight(context)/100)*28;
                                    leftCurved1X = details.globalPosition.dx-(myHeight(context)/100)*28;
                                  });
                                },

                              ),

                            ),),
                          // ),




                        ):Container(),

                        /////////////////////////////////////////////////////////////////
                        isEditing == true?Positioned(
                            top: topy,
                            left: leftx,
                            child: Transform.rotate(
                              angle: math.pi/180 * degree,
                              child:GestureDetector(
                                child: Container(
                                  //       height: 40,
                                  color: checkedValue == true?Colors.black12:null,
                                  child: Container(
                                    //   height: 40,
                                    decoration: BoxDecoration(
                                      border: isEditingProp == true?Border.all(color: Colors.red,):null,
                                    ),
                                    width: MediaQuery.of(context).size.width*0.85,
                                    child: TextField(controller: myTextController,
                                      decoration: InputDecoration.collapsed(hintText: ""),
                                      keyboardType: TextInputType.multiline,
                                      minLines: 1,
                                      maxLines: 15,
                                      onTap: (){
                                        setState(() {
                                          //isEditingProp = true;
                                          if(isEditingProp1 == false && isEditingProp2 == false && isEditingProp3 == false && isEditingProp4 == false &&
                                              isEditingProp5 == false){
                                            isEditingProp = true;
                                            isEmojiEditing = false;
                                            isEmojiEditing1 = false;
                                            isEmojiEditing2 = false;
                                            isEmojiEditing3 = false;
                                            isEmojiEditing4 = false;
                                          }
                                          // isRotationEditing = true;
                                        });
                                      },
                                      style:
                                      TextStyle(fontSize: dropDownSelectedItemState,color: initialTextColor,
                                          fontFamily: dropDownSelectedItemState1,fontWeight: bold == true?FontWeight.bold:FontWeight.normal, fontStyle:italics == true?FontStyle.italic:FontStyle.normal),textAlign: TextAlign.center,),
                                  ),),



                                onPanUpdate: (details){
                                  setState(() {
                                    //element.changeCoord(details.globalPosition.dx-(myHeight(context)/100)*28, details.globalPosition.dy-(myHeight(context)/100)*28);
                                    topy = details.globalPosition.dy-(myHeight(context)/100)*28;
                                    leftx = details.globalPosition.dx-(myHeight(context)/100)*28;
                                  });
                                },
                              ),)):Container(),


                        isEditing1 == true? Positioned(
                            top: topy00,
                            left: leftx00,
                            child: Transform.rotate(
                              angle: math.pi/180*degree1,
                              child:GestureDetector(
                                child: Container(
                                  //      height: 40,
                                  color: checkedValue1 == true?Colors.black12:null,
                                  child: Container(
                                    //   height: 40,
                                    decoration: BoxDecoration(
                                      border: isEditingProp1 == true?Border.all(color: Colors.red,):null,
                                    ),
                                    width: MediaQuery.of(context).size.width*0.85,
                                    child: TextField(controller: myTextController1,
                                      decoration: InputDecoration.collapsed(hintText: "",),
                                      keyboardType: TextInputType.multiline,
                                      minLines: 1,
                                      maxLines: 15,
                                      onTap: (){
                                        setState(() {

                                          if(isEditingProp == false && isEditingProp2 == false && isEditingProp3 == false && isEditingProp4 == false &&
                                              isEditingProp5 == false){
                                            isEditingProp1 = true;
                                            isEmojiEditing = false;
                                            isEmojiEditing1 = false;
                                            isEmojiEditing2 = false;
                                            isEmojiEditing3 = false;
                                            isEmojiEditing4 = false;
                                          }
                                          // isRotationEditing1 = true;
                                        });
                                      },
                                      style:
                                      TextStyle(fontSize: dropDownSelectedItemState02,color: initialTextColor1,
                                          fontFamily: dropDownSelectedItemState12,fontWeight: bold1 == true?FontWeight.bold:FontWeight.normal, fontStyle:italics1 == true?FontStyle.italic:FontStyle.normal),textAlign: TextAlign.center,),
                                  ),),



                                onPanUpdate: (details){
                                  setState(() {
                                    //element.changeCoord(details.globalPosition.dx-(myHeight(context)/100)*28, details.globalPosition.dy-(myHeight(context)/100)*28);
                                    topy00 = details.globalPosition.dy-(myHeight(context)/100)*28;
                                    leftx00 = details.globalPosition.dx-(myHeight(context)/100)*28;
                                  });
                                },
                              ),)

                        ):Container(),

                        isEditing2 == true?  Positioned(
                            top: topy11,
                            left: leftx11,
                            child: Transform.rotate(
                              angle: math.pi/180*degree2,
                              child:GestureDetector(
                                child: Container(
                                  //       height: 40,
                                  color: checkedValue2 == true?Colors.black12:null,
                                  child: Container(
                                    //      height: 40,
                                    decoration: BoxDecoration(
                                      border: isEditingProp2 == true?Border.all(color: Colors.red,):null,
                                    ),
                                    width: MediaQuery.of(context).size.width*0.85,
                                    child: TextField(controller: myTextController2,
                                      decoration: InputDecoration.collapsed(hintText: "",),
                                      keyboardType: TextInputType.multiline,
                                      minLines: 1,
                                      maxLines: 15,
                                      onTap: (){
                                        setState(() {

                                          if(isEditingProp == false && isEditingProp1 == false && isEditingProp3 == false && isEditingProp4 == false &&
                                              isEditingProp5 == false){
                                            isEditingProp2 = true;
                                            isEmojiEditing = false;
                                            isEmojiEditing1 = false;
                                            isEmojiEditing2 = false;
                                            isEmojiEditing3 = false;
                                            isEmojiEditing4 = false;
                                          }
                                          // isRotationEditing2 = true;
                                        });
                                      },
                                      style:
                                      TextStyle(fontSize: dropDownSelectedItemState03,color: initialTextColor2,
                                          fontFamily: dropDownSelectedItemState13,fontWeight: bold2 == true?FontWeight.bold:FontWeight.normal, fontStyle:italics2 == true?FontStyle.italic:FontStyle.normal),textAlign: TextAlign.center,),
                                  ),),



                                onPanUpdate: (details){
                                  setState(() {
                                    //element.changeCoord(details.globalPosition.dx-(myHeight(context)/100)*28, details.globalPosition.dy-(myHeight(context)/100)*28);
                                    topy11 = details.globalPosition.dy-(myHeight(context)/100)*28;
                                    leftx11 = details.globalPosition.dx-(myHeight(context)/100)*28;
                                  });
                                },
                              ),)

                        ):Container(),

                        isEditing3 == true?  Positioned(
                            top: topy22,
                            left: leftx22,
                            child: Transform.rotate(
                              angle: math.pi/180*degree3,
                              child:GestureDetector(
                                child: Container(
                                  //       height: 40,
                                  color: checkedValue3 == true?Colors.black12:null,
                                  child: Container(
                                    //      height: 40,
                                    decoration: BoxDecoration(
                                      border: isEditingProp3 == true?Border.all(color: Colors.red,):null,
                                    ),
                                    width: MediaQuery.of(context).size.width*0.85,
                                    child: TextField(controller: myTextController3,
                                      decoration: InputDecoration.collapsed(hintText: "",),
                                      keyboardType: TextInputType.multiline,
                                      minLines: 1,
                                      maxLines: 15,
                                      onTap: (){
                                        setState(() {

                                          if(isEditingProp == false && isEditingProp1 == false && isEditingProp2 == false && isEditingProp4 == false &&
                                              isEditingProp5 == false){
                                            isEditingProp3 = true;
                                            isEmojiEditing = false;
                                            isEmojiEditing1 = false;
                                            isEmojiEditing2 = false;
                                            isEmojiEditing3 = false;
                                            isEmojiEditing4 = false;
                                          }
                                          // isRotationEditing3 = true;
                                        });
                                      },
                                      style:
                                      TextStyle(fontSize: dropDownSelectedItemState04,color: initialTextColor3,
                                          fontFamily: dropDownSelectedItemState14,fontWeight: bold3 == true?FontWeight.bold:FontWeight.normal, fontStyle:italics3 == true?FontStyle.italic:FontStyle.normal),textAlign: TextAlign.center,),
                                  ),),



                                onPanUpdate: (details){
                                  setState(() {
                                    //element.changeCoord(details.globalPosition.dx-(myHeight(context)/100)*28, details.globalPosition.dy-(myHeight(context)/100)*28);
                                    topy22 = details.globalPosition.dy-(myHeight(context)/100)*28;
                                    leftx22 = details.globalPosition.dx-(myHeight(context)/100)*28;
                                  });
                                },
                              ),)

                        ):Container(),

                        isEditing4 == true?  Positioned(
                            top: topy33,
                            left: leftx33,
                            child: Transform.rotate(
                              angle: math.pi/180*degree4,
                              child:GestureDetector(
                                child: Container(
                                  //    height: 40,
                                  color: checkedValue4 == true?Colors.black12:null,
                                  child: Container(
                                    //     height: 40,
                                    decoration: BoxDecoration(
                                      border: isEditingProp4 == true?Border.all(color: Colors.red,):null,
                                    ),
                                    width: MediaQuery.of(context).size.width*0.85,
                                    child: TextField(controller: myTextController4,
                                      decoration: InputDecoration.collapsed(hintText: "",),
                                      keyboardType: TextInputType.multiline,
                                      minLines: 1,
                                      maxLines: 15,
                                      onTap: (){
                                        setState(() {

                                          if(isEditingProp == false && isEditingProp1 == false && isEditingProp2 == false && isEditingProp3 == false &&
                                              isEditingProp5 == false){
                                            isEditingProp4 = true;
                                            isEmojiEditing = false;
                                            isEmojiEditing1 = false;
                                            isEmojiEditing2 = false;
                                            isEmojiEditing3 = false;
                                            isEmojiEditing4 = false;
                                          }
                                          //  isRotationEditing4 = true;
                                        });
                                      },
                                      style:
                                      TextStyle(fontSize: dropDownSelectedItemState05,color: initialTextColor4,
                                          fontFamily: dropDownSelectedItemState15,fontWeight: bold4 == true?FontWeight.bold:FontWeight.normal, fontStyle:italics4 == true?FontStyle.italic:FontStyle.normal),textAlign: TextAlign.center,),
                                  ),),



                                onPanUpdate: (details){
                                  setState(() {
                                    //element.changeCoord(details.globalPosition.dx-(myHeight(context)/100)*28, details.globalPosition.dy-(myHeight(context)/100)*28);
                                    topy33 = details.globalPosition.dy-(myHeight(context)/100)*28;
                                    leftx33 = details.globalPosition.dx-(myHeight(context)/100)*28;
                                  });
                                },
                              ),)

                        ):Container(),


                        isEditing5 == true?  Positioned(
                          top: topy44,
                          left: leftx44,
                          child: Transform.rotate(
                            angle: math.pi/180*degree5,
                            child:GestureDetector(
                              child: Container(
                                //      height: 40,
                                color: checkedValue == true?Colors.black12:null,
                                child: Container(
                                  //     height: 40,
                                  decoration: BoxDecoration(
                                    border: isEditingProp5 == true?Border.all(color: Colors.red,):null,
                                  ),
                                  width: MediaQuery.of(context).size.width*0.85,
                                  child: TextField(controller: myTextController5,
                                    decoration: InputDecoration.collapsed(hintText: "",),
                                    keyboardType: TextInputType.multiline,
                                    minLines: 1,
                                    maxLines: 15,
                                    onTap: (){
                                      setState(() {

                                        if(isEditingProp == false && isEditingProp1 == false && isEditingProp2 == false && isEditingProp3 == false && isEditingProp4 == false){
                                          isEditingProp5 = true;
                                          isEmojiEditing = false;
                                          isEmojiEditing1 = false;
                                          isEmojiEditing2 = false;
                                          isEmojiEditing3 = false;
                                          isEmojiEditing4 = false;
                                        }
                                        // isRotationEditing5 = true;
                                      });
                                    },
                                    style:
                                    TextStyle(fontSize: dropDownSelectedItemState06,color: initialTextColor5,
                                        fontFamily: dropDownSelectedItemState16,fontWeight: bold5 == true?FontWeight.bold:FontWeight.normal, fontStyle:italics5 == true?FontStyle.italic:FontStyle.normal),textAlign: TextAlign.center,),
                                ),),



                              onPanUpdate: (details){
                                setState(() {
                                  //element.changeCoord(details.globalPosition.dx-(myHeight(context)/100)*28, details.globalPosition.dy-(myHeight(context)/100)*28);
                                  topy44 = details.globalPosition.dy-(myHeight(context)/100)*28;
                                  leftx44 = details.globalPosition.dx-(myHeight(context)/100)*28;
                                });
                              },
                            ),),

                        ):Container(),


                        ////////////////////////////////////////////////////////

                        myGlobal.emojiShowCount >= 1?Positioned(
                          top: topEy,
                          left: leftEx,
                          child: GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                border: isEmojiEditing == true && myEmojiUrl.length >0?Border.all(color: Colors.red,):null,
                              ),
                              height: emojiHeight,
                              width: emojiWidth,
                              child: myEmojiUrl.length > 0?Image.asset(myEmojiUrl[0],):Container(),
                            ),
                            onTap: (){
                              setState(() {
                                isEmojiEditing = true;
                                isEmojiEditing1 = false;
                                isEmojiEditing2 = false;
                                isEmojiEditing3 = false;
                                isEmojiEditing4 = false;
                                isEditingProp = false; isEditingProp1 = false; isEditingProp2 = false;
                                isEditingProp3 = false; isEditingProp4 = false; isEditingProp5 = false;
                              });
                            },
                            onPanUpdate: (details){
                              setState(() {
                                myGlobal.topEy = topEy =   details.globalPosition.dy;//(myHeight(context)/100)*28;
                                myGlobal.leftEx =  leftEx = details.globalPosition.dx;//(myHeight(context)/100)*28;
                                //print((myHeight(context)/100)*28);
                              });
                            },

                          ),
                        ):Container(),

                        myGlobal.emojiShowCount >= 2?Positioned(
                          top: topEy0,
                          left: leftEx0,
                          child: GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                border: isEmojiEditing1 == true && myEmojiUrl.length >0?Border.all(color: Colors.red,):null,
                              ),
                              height: emojiHeight1,
                              width: emojiWidth1,
                              child: myEmojiUrl.length  > 0?Image.asset(myEmojiUrl[1],):Container(),
                            ),

                            onTap: (){
                              setState(() {
                                isEmojiEditing = false;
                                isEmojiEditing1 = true;
                                isEmojiEditing2 = false;
                                isEmojiEditing3 = false;
                                isEmojiEditing4 = false;
                                isEditingProp = false; isEditingProp1 = false; isEditingProp2 = false;
                                isEditingProp3 = false; isEditingProp4 = false; isEditingProp5 = false;
                              });
                            },
                            onPanUpdate: (details){
                              setState(() {
                                myGlobal.topEy0 =   topEy0 =   details.globalPosition.dy;//-(myHeight(context)/100)*28;
                                myGlobal.leftEx0 = leftEx0 = details.globalPosition.dx;//-(myHeight(context)/100)*28;
                                //print((myHeight(context)/100)*28);
                              });
                            },

                          ),
                        ):Container(),

                        myGlobal.emojiShowCount >= 3?Positioned(
                          top: topEy1,
                          left: leftEx1,
                          child: GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                border: isEmojiEditing2 == true && myEmojiUrl.length >0?Border.all(color: Colors.red,):null,
                              ),
                              height: emojiHeight2,
                              width: emojiWidth2,
                              child: myEmojiUrl.length  > 0?Image.asset(myEmojiUrl[2],):Container(),
                            ),

                            onTap: (){
                              setState(() {
                                isEmojiEditing = false;
                                isEmojiEditing1 = false;
                                isEmojiEditing2 = true;
                                isEmojiEditing3 = false;
                                isEmojiEditing4 = false;
                                isEditingProp = false; isEditingProp1 = false; isEditingProp2 = false;
                                isEditingProp3 = false; isEditingProp4 = false; isEditingProp5 = false;
                              });
                            },
                            onPanUpdate: (details){
                              setState(() {
                                myGlobal.topEy1 =  topEy1 =   details.globalPosition.dy;//-(myHeight(context)/100)*28;
                                myGlobal.leftEx1 = leftEx1 = details.globalPosition.dx;//-(myHeight(context)/100)*28;
                                //print((myHeight(context)/100)*28);
                              });
                            },

                          ),
                        ):Container(),

                        myGlobal.emojiShowCount >= 4?Positioned(
                          top: topEy2,
                          left: leftEx2,
                          child: GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                border: isEmojiEditing3 == true && myEmojiUrl.length >0?Border.all(color: Colors.red,):null,
                              ),
                              height: emojiHeight3,
                              width: emojiWidth3,
                              child: myEmojiUrl.length  > 0?Image.asset(myEmojiUrl[3],):Container(),
                            ),
                            onTap: (){
                              setState(() {
                                isEmojiEditing = false;
                                isEmojiEditing1 = false;
                                isEmojiEditing2 = false;
                                isEmojiEditing3 = true;
                                isEmojiEditing4 = false;
                                isEditingProp = false; isEditingProp1 = false; isEditingProp2 = false;
                                isEditingProp3 = false; isEditingProp4 = false; isEditingProp5 = false;
                              });
                            },
                            onPanUpdate: (details){
                              setState(() {
                                myGlobal.topEy2 = topEy2 =   details.globalPosition.dy;//-(myHeight(context)/100)*28;
                                myGlobal.leftEx2 = leftEx2 = details.globalPosition.dx;//-(myHeight(context)/100)*28;
                                //print((myHeight(context)/100)*28);
                              });
                            },

                          ),
                        ):Container(),

                        myGlobal.emojiShowCount >= 5?Positioned(
                          top: topEy3,
                          left: leftEx3,
                          child: GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                border: isEmojiEditing4 == true && myEmojiUrl.length >0?Border.all(color: Colors.red,):null,
                              ),
                              height: emojiHeight4,
                              width: emojiWidth4,
                              child: myEmojiUrl.length > 0?Image.asset(myEmojiUrl[4],):Container(),
                            ),
                            onTap: (){
                              setState(() {
                                isEmojiEditing = false;
                                isEmojiEditing1 = false;
                                isEmojiEditing2 = false;
                                isEmojiEditing3 = false;
                                isEmojiEditing4 = true;
                                isEditingProp = false; isEditingProp1 = false; isEditingProp2 = false;
                                isEditingProp3 = false; isEditingProp4 = false; isEditingProp5 = false;
                              });
                            },
                            onPanUpdate: (details){
                              setState(() {
                                myGlobal.topEy3 = topEy3 =   details.globalPosition.dy;//-(myHeight(context)/100)*28;
                                myGlobal.leftEx3 = leftEx3 = details.globalPosition.dx;//-(myHeight(context)/100)*28;
                                //print((myHeight(context)/100)*28);
                              });
                            },

                          ),
                        ):Container(),

                      ],
                    ),),),),

              isEmojiEditing == true || isEmojiEditing1 == true || isEmojiEditing2 == true || isEmojiEditing3 == true || isEmojiEditing4?Container(
                margin: EdgeInsets.only(top: 10),
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.red[700],
                    inactiveTrackColor: Colors.red[100],
                    trackShape: RoundedRectSliderTrackShape(),
                    trackHeight: 4.0,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                    thumbColor: Colors.redAccent,
                    overlayColor: Colors.red.withAlpha(32),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                    tickMarkShape: RoundSliderTickMarkShape(),
                    activeTickMarkColor: Colors.red[700],
                    inactiveTickMarkColor: Colors.red[100],
                    valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                    valueIndicatorColor: Colors.redAccent,
                    valueIndicatorTextStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  child: Slider(
                    min: 0,
                    max: 5,
                    divisions: 10,
                    value: _value,
                    label: '$_value',
                    onChanged: (value) {
                      shrinkStretchEmoji(value);
                      setState(() {
                        _value = value;
                        print(_value);
                      });
                    },
                  ),),):Container(),

              isRotationEditing == true || isRotationEditing1 == true || isRotationEditing2 == true || isRotationEditing3 == true
                  || isRotationEditing4 == true || isRotationEditing5 == true
                  || isRotateCurveEditing == true  || isRotateCurveEditing1 == true?Container(
                margin: EdgeInsets.only(top: 10),
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.blue,
                    inactiveTrackColor: Colors.red[100],
                    trackShape: RoundedRectSliderTrackShape(),
                    trackHeight: 4.0,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                    thumbColor: Colors.blue,
                    overlayColor: Colors.red.withAlpha(32),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                    tickMarkShape: RoundSliderTickMarkShape(),
                    activeTickMarkColor: Colors.green,
                    inactiveTickMarkColor: Colors.red[100],
                    valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                    valueIndicatorColor: Colors.green,
                    valueIndicatorTextStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  child: Slider(
                    min: 0,
                    max: 360,
                    divisions: 360,
                    value: whichTextDegree()!.toDouble(),
                    label: whichTextDegree().toString(),
                    onChanged: (value) {
                      shrinkStretchEmoji(value);
                      setState(() {
                        //degree = value.toInt();

                        if(isRotateCurveEditing == true){
                          degreeCurve = value.toInt();
                        }
                        if(isRotateCurveEditing1 == true){
                          degreeCurve1 = value.toInt();
                        }

                        if(isRotationEditing == true){
                          degree = value.toInt();
                        }
                        if(isRotationEditing1 == true){
                          degree1 = value.toInt();
                        }
                        if(isRotationEditing2 == true){
                          degree2 = value.toInt();
                        }
                        if(isRotationEditing3 == true){
                          degree3 = value.toInt();
                        }
                        if(isRotationEditing4 == true){
                          degree4 = value.toInt();
                        }
                        if(isRotationEditing5 == true){
                          degree5 = value.toInt();
                        }
                        print(_value);
                      });
                    },
                  ),),):Container(),


            ],),



        ),
      ),

      bottomNavigationBar: CustomNavigationBar(
        iconSize: 20.0,
        selectedColor: Color(0xff040307),
        strokeColor: Color(0x30040307),
        unSelectedColor: Color(0xffacacac),
        backgroundColor: Colors.white,
        elevation: 10,
        items: [
          CustomNavigationBarItem(
            icon: Icon(Icons.text_fields, size: (myHeight(context)/100)*5,color: Colors.deepPurple,),
            title: Container(
                margin: EdgeInsets.only(top:14,left: MediaQuery.of(context).size.width*0.03),
                child: Text("TEXT",style: TextStyle(fontSize: 10),textAlign: TextAlign.center,)),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.title, size: (myHeight(context)/100)*5,color: Colors.lightGreen,),
            title: Container(
                margin: EdgeInsets.only(top:14,left: MediaQuery.of(context).size.width*0.05),
                child: Text("CURVE",style: TextStyle(fontSize: 10),textAlign: TextAlign.center,)),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.image, size: (myHeight(context)/100)*5,color: Colors.orange,),
            title: Container(
                margin: EdgeInsets.only(top:14,left: MediaQuery.of(context).size.width*0.03),
                child: Text("IMAGE",style: TextStyle(fontSize: 10),)),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.color_lens, size: (myHeight(context)/100)*5,color: Colors.brown,),
            title: Container(
                margin: EdgeInsets.only(top:14,left: MediaQuery.of(context).size.width*0.03),
                child: Text("GRAD",style: TextStyle(fontSize: 10),)),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.emoji_emotions_outlined, size: (myHeight(context)/100)*5,color: Colors.deepPurple,),
            title: Container(
                margin: EdgeInsets.only(top:14,left: MediaQuery.of(context).size.width*0.03),
                child: Text("EMOJI",style: TextStyle(fontSize: 10),)),
          ),
        ],
        currentIndex: _page,
        onTap: (index) {
          setState(() {
            _page = index;
          });

          if(_page == 0){
            //Navigator.push(context, MaterialPageRoute(builder: (context) => ImageCards()));
            int i = 0;
            setState(() {
              if(isEditingProp == false && isEditingProp1 == false && isEditingProp2 == false && isEditingProp3 == false &&
                  isEditingProp4 == false && isEditingProp5 == false){
                if(isEditing == false && i == 0){
                  isEditing = true;
                  countNow = 1;
                  i = 1;
                  //yourText = "Enter your first text here";
                  myTextController.text = yourText;
                  myGlobal.textAdded = yourText;
                }
                if(isEditing1 == false  && i == 0){
                  isEditing1 = true;
                  countNow = 2;
                  i = 1;
                  //yourText1 = "Enter your second text here";
                  myTextController1.text = yourText1;
                  myGlobal.textAdded1 = yourText1;
                }
                if(isEditing2 == false  && i == 0){
                  isEditing2 = true;
                  countNow = 3;
                  i = 1;
                  //yourText2 = "Enter your first text here";
                  myTextController2.text = yourText2;
                  myGlobal.textAdded2 = yourText2;
                }
                if(isEditing3 == false  && i == 0){
                  isEditing3 = true;
                  countNow = 4;
                  i = 1;
                  //yourText3 = "Enter your first text here";
                  myTextController3.text = yourText3;
                  myGlobal.textAdded3 = yourText3;
                }
                if(isEditing4 == false  && i == 0){
                  isEditing4 = true;
                  countNow = 5;
                  i = 1;
                  //yourText4 = "Enter your first text here";
                  myTextController4.text = yourText4;
                  myGlobal.textAdded4 = yourText4;
                }

                if(isEditing5 == false  && i == 0){
                  isEditing5 = true;
                  countNow = 5;
                  i = 1;
                  //yourText4 = "Enter your first text here";
                  myTextController5.text = yourText5;
                  myGlobal.textAdded5 = yourText5;
                }

              }

              print(textMeList.length);
            });
          }

          if(_page == 1){
            setState(() {
              if(curvedText1 == false && curvedText == true){
                curvedText1 = true;
                myCurvedTextController1.text = yourCurvedText1;
              }
              if(curvedText == false){
                curvedText = true;
                // myGlobal.curvedTextIsOn = true;
                myCurvedTextController.text = yourCurvedText;
              }

            });
          }

          if(_page == 2){
           /* Ads.createInterstitialAd();
            myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement + 1;
            getImage1(context);*/

            if(Ads.checkAdIntervals() == true){
              Ads.showInterstitialAd();
              myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement +1;

              Ads.delayAdDialog(context);
              Future.delayed(Duration(seconds: 0),(){
                Navigator.of(context).pop();
                getImage1(context);
                //Navigator.push(context, MaterialPageRoute(builder: (context) => TextOver(false,null,null)));

              });
            }else{
              getImage1(context);
              myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement +1;
            }
          }

          if(_page == 3){
            /*Ads.createInterstitialAd();
            myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement + 1;
            _setColorGradient();*/

            if(Ads.checkAdIntervals() == true){
              Ads.showInterstitialAd();
              myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement +1;

              Ads.delayAdDialog(context);
              Future.delayed(Duration(seconds: 0),(){
                Navigator.of(context).pop();
                _setColorGradient();
                //Navigator.push(context, MaterialPageRoute(builder: (context) => TextOver(false,null,null)));

              });
            }else{
              _setColorGradient();
              myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement +1;
            }
            //  myMenuPopUp();
          }

          if(_page == 4){
            /* myGlobal.topEy = topEy;
            myGlobal.leftEx= leftEx;
            myGlobal.topEy0 = topEy0;
            myGlobal.leftEx0 = leftEx0;
            myGlobal.topEy1 = topEy1;
            myGlobal.leftEx1 = leftEx1;
            myGlobal.topEy2 = topEy2;
            myGlobal.leftEx2 = leftEx2;
            myGlobal.topEy3 = topEy3;
            myGlobal.leftEx3 = leftEx3;
            Navigator.push(context, MaterialPageRoute(builder: (context) => Emojis()));*/
            emojiDialog();
          }


        },
      ),

     /* CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: (myHeight(context)/100)*11,//40.0,
        items: <Widget>[
          GestureDetector(
            child: Container(
            //margin: EdgeInsets.only(bottom: 7),
            child: Column(children: [
             // Container(child: Text("TEXT",style: TextStyle(fontSize: 10),),),
              Icon(Icons.text_fields, size: (myHeight(context)/100)*6,color: Colors.deepPurple,),
              Container(child: Text("TEXT",style: TextStyle(fontSize: 10),),),
            ],),),
          onTap: (){

            int i = 0;
            setState(() {
              if(isEditingProp == false && isEditingProp1 == false && isEditingProp2 == false && isEditingProp3 == false &&
                  isEditingProp4 == false && isEditingProp5 == false){
                if(isEditing == false && i == 0){
                  isEditing = true;
                  countNow = 1;
                  i = 1;
                  //yourText = "Enter your first text here";
                  myTextController.text = yourText;
                  myGlobal.textAdded = yourText;
                }
                if(isEditing1 == false  && i == 0){
                  isEditing1 = true;
                  countNow = 2;
                  i = 1;
                  //yourText1 = "Enter your second text here";
                  myTextController1.text = yourText1;
                  myGlobal.textAdded1 = yourText1;
                }
                if(isEditing2 == false  && i == 0){
                  isEditing2 = true;
                  countNow = 3;
                  i = 1;
                  //yourText2 = "Enter your first text here";
                  myTextController2.text = yourText2;
                  myGlobal.textAdded2 = yourText2;
                }
                if(isEditing3 == false  && i == 0){
                  isEditing3 = true;
                  countNow = 4;
                  i = 1;
                  //yourText3 = "Enter your first text here";
                  myTextController3.text = yourText3;
                  myGlobal.textAdded3 = yourText3;
                }
                if(isEditing4 == false  && i == 0){
                  isEditing4 = true;
                  countNow = 5;
                  i = 1;
                  //yourText4 = "Enter your first text here";
                  myTextController4.text = yourText4;
                  myGlobal.textAdded4 = yourText4;
                }

                if(isEditing5 == false  && i == 0){
                  isEditing5 = true;
                  countNow = 5;
                  i = 1;
                  //yourText4 = "Enter your first text here";
                  myTextController5.text = yourText5;
                  myGlobal.textAdded5 = yourText5;
                }

              }

              print(textMeList.length);
            });
          },
          ),

          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(bottom: 7),
              child: Column(children: [
                Icon(Icons.title, size: (myHeight(context)/100)*6,color: Colors.lightGreen,),
                Container(child: Text("CURVE",style: TextStyle(fontSize: 10),),),
              ],),),
              onTap: (){
                setState(() {
                  if(curvedText1 == false && curvedText == true){
                    curvedText1 = true;
                    myCurvedTextController1.text = yourCurvedText1;
                  }
                  if(curvedText == false){
                    curvedText = true;
                    // myGlobal.curvedTextIsOn = true;
                    myCurvedTextController.text = yourCurvedText;
                  }

                });
              },
          ),

          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(bottom: 7),
              child: Column(children: [
                Icon(Icons.image, size: (myHeight(context)/100)*6,color: Colors.orange,),
                Container(child: Text("IMAGE",style: TextStyle(fontSize: 10),),),
              ],),),
          onTap: (){
            Ads.createInterstitialAd();
            myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement + 1;
            getImage1(context);
          },
          ),

          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(bottom: 7),
              child: Column(children: [
                Icon(Icons.color_lens, size: (myHeight(context)/100)*6,color: Colors.brown,),
                Container(child: Text("GRADIENT",style: TextStyle(fontSize: 10),),),
              ],),),
          onTap: (){
            Ads.createInterstitialAd();
            myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement + 1;
            _setColorGradient();
          },
          ),
          //myMenuPopUp(),

          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(bottom: 7),
              child: Column(children: [
                Icon(Icons.emoji_emotions_outlined, size: (myHeight(context)/100)*6,color: Colors.deepPurple,),
                Container(child: Text("EMOJI",style: TextStyle(fontSize: 10),),),
              ],),),
              onTap: (){
                emojiDialog();
              },
          ),


        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.indigo,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
          if(_page == 0){
            //Navigator.push(context, MaterialPageRoute(builder: (context) => ImageCards()));
            int i = 0;
            setState(() {
              if(isEditingProp == false && isEditingProp1 == false && isEditingProp2 == false && isEditingProp3 == false &&
                  isEditingProp4 == false && isEditingProp5 == false){
                if(isEditing == false && i == 0){
                  isEditing = true;
                  countNow = 1;
                  i = 1;
                  //yourText = "Enter your first text here";
                  myTextController.text = yourText;
                  myGlobal.textAdded = yourText;
                }
                if(isEditing1 == false  && i == 0){
                  isEditing1 = true;
                  countNow = 2;
                  i = 1;
                  //yourText1 = "Enter your second text here";
                  myTextController1.text = yourText1;
                  myGlobal.textAdded1 = yourText1;
                }
                if(isEditing2 == false  && i == 0){
                  isEditing2 = true;
                  countNow = 3;
                  i = 1;
                  //yourText2 = "Enter your first text here";
                  myTextController2.text = yourText2;
                  myGlobal.textAdded2 = yourText2;
                }
                if(isEditing3 == false  && i == 0){
                  isEditing3 = true;
                  countNow = 4;
                  i = 1;
                  //yourText3 = "Enter your first text here";
                  myTextController3.text = yourText3;
                  myGlobal.textAdded3 = yourText3;
                }
                if(isEditing4 == false  && i == 0){
                  isEditing4 = true;
                  countNow = 5;
                  i = 1;
                  //yourText4 = "Enter your first text here";
                  myTextController4.text = yourText4;
                  myGlobal.textAdded4 = yourText4;
                }

                if(isEditing5 == false  && i == 0){
                  isEditing5 = true;
                  countNow = 5;
                  i = 1;
                  //yourText4 = "Enter your first text here";
                  myTextController5.text = yourText5;
                  myGlobal.textAdded5 = yourText5;
                }

              }

              print(textMeList.length);
            });
          }

          if(_page == 1){
            setState(() {
              if(curvedText1 == false && curvedText == true){
                curvedText1 = true;
                myCurvedTextController1.text = yourCurvedText1;
              }
              if(curvedText == false){
                curvedText = true;
                // myGlobal.curvedTextIsOn = true;
                myCurvedTextController.text = yourCurvedText;
              }

            });
          }

          if(_page == 2){
            Ads.createInterstitialAd();
            myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement + 1;
            getImage1(context);
          }


          if(_page == 3){
            Ads.createInterstitialAd();
            myGlobal.myAdIntervalIncrement = myGlobal.myAdIntervalIncrement + 1;
            _setColorGradient();
            //  myMenuPopUp();
          }

          if(_page == 4){
            /* myGlobal.topEy = topEy;
            myGlobal.leftEx= leftEx;
            myGlobal.topEy0 = topEy0;
            myGlobal.leftEx0 = leftEx0;
            myGlobal.topEy1 = topEy1;
            myGlobal.leftEx1 = leftEx1;
            myGlobal.topEy2 = topEy2;
            myGlobal.leftEx2 = leftEx2;
            myGlobal.topEy3 = topEy3;
            myGlobal.leftEx3 = leftEx3;
            Navigator.push(context, MaterialPageRoute(builder: (context) => Emojis()));*/
            emojiDialog();
          }
        },
      ),*/

    );
  }
}
