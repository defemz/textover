import 'dart:io';
import 'dart:math';
import 'dart:typed_data';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'DBSource.dart';
import 'database/database_helper.dart';
import 'database/model/DBTables.dart';

class ClassHub  {
  List<String> assetFiles = [];

  Future<bool?> copyFileToWorkingDirectory(String copyFileFromName, String copyFileToName)async{

    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String workingpath = join(documentsDirectory.path, copyFileToName);
    ByteData data = await rootBundle.load(copyFileFromName);
    List<int> bytesBuffer = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await new File(workingpath).writeAsBytes(bytesBuffer).then((onValue){
      //unZipIt(workingpath);
      return true;
    });

    //print(unzipResult);
  }


  Future<String> saveToTemp(Uint8List filedata)async{
    ByteData data;
    String workingPath;
    int i = 0;
    String bname = "file";
    Random rand = Random();
    int myRand = rand.nextInt(100000);
    bname = "xxxx.jpg";
    Directory workingDir  = await getTemporaryDirectory();
    String path = workingDir.path+"/$bname";
    //await Directory(path).create();
    workingPath = path;
    List<int> bytesBuffer = filedata.buffer.asUint8List(filedata.offsetInBytes, filedata.lengthInBytes);
    File(workingPath).writeAsBytes(bytesBuffer).then((value){
      if(value !=null){
        showToast("successfully saved to temp folder");
        print(workingPath);
        return path;
      }
      else{
        showToast("Could not be saved to temp folder");
      }
    });
    return workingPath;
  }

   deleteFiles(String filename){
    File(filename).delete();
  }


  saveMediaCard(Uint8List filedata)async{
    ByteData data;
    String workingPath;
    int i = 0;
    String bname = "file";
    Random rand = Random();
    int myRand = rand.nextInt(100000);
    bname = bname + myRand.toString()+".jpg";
    Directory workingDir  = await getApplicationDocumentsDirectory();
    String path = workingDir.path+"/myFinishedImages";
    await Directory(path).create();
    workingPath = path+"/$bname";
    List<int> bytesBuffer = filedata.buffer.asUint8List(filedata.offsetInBytes, filedata.lengthInBytes);
    File(workingPath).writeAsBytes(bytesBuffer).then((value){
      if(value !=null){
        showToast("Image card successfully saved");
      }
      else{
        showToast("Image card could not be saved");
      }
    });

  }



  saveAllMedia()async{
    ByteData data;
    String workingPath;
    int i = 0;
    String bname;
    assetFiles = DBSource().assetsFileList;
    Directory workingDir  = await getApplicationDocumentsDirectory();
    String path = workingDir.path+"/sampleImages";
    await Directory(path).create();
    assetFiles.forEach((element) async {
      data = await rootBundle.load(element);
      bname = element.split('/').last;
      workingPath = path+"/$bname";
      List<int> bytesBuffer = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(workingPath).writeAsBytes(bytesBuffer);
    });



    /* if(await Directory(path).exists()){ //.then((value){
      Directory dir = await Directory("$path/Download/Statuspin").create();
      Directory("$path/Whatsapp/Media/.Statuses").list(recursive: false).listen((event) async{
        final imageBytes = await rootBundle.load(path);
        if(checkMediaType(event.path) == true) {
          String myFilebaseName = basename(event.path);
          Uint8List data = await File(event.path).readAsBytes();
          File f = await File(dir.path + '/$myFilebaseName').writeAsBytes(data);
        }
      });

    }else {
      await Directory("$path/Download").create();
      Directory dir = await Directory("$path/Download/Statuspin").create();
      Directory("$path/Whatsapp/Media/.Statuses").list(recursive: false).listen((event) async{
        if(checkMediaType(event.path) == true) {
          String myFilebaseName = basename(event.path);
          Uint8List data = await File(event.path).readAsBytes();
          File f = await File(dir.path + '/$myFilebaseName').writeAsBytes(data);
        }
      });
    }*/
  }

  //This function cycles through a folder and return list of files
  Future<List<String>> retrieveDirectoryFiles()async{
    List<String> imagePath = [];
    Directory workingDir  = await getApplicationDocumentsDirectory();
    String path = workingDir.path+"/sampleImages";
    Directory(path).list(recursive: false).listen((event){
      imagePath.add(event.path);
    });
    print("QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ");
    print(imagePath.length);
    return imagePath;
  }

  deleteMySharedPreference()async{
    SharedPreferences myPreferences = await SharedPreferences.getInstance();
    myPreferences.clear();
  }

  Future<String?> mySharedPreference(String spName,String setOrGet,String myTokenToSave)async{
    SharedPreferences myPreferences = await SharedPreferences.getInstance();
    String? returnJson;
    if(setOrGet == 'set'){
      myPreferences.setString(spName, myTokenToSave);
    }
    else if(setOrGet == 'get'){
      returnJson = myPreferences.getString(spName);
      if(returnJson == null){
        //returnJson = returnJsonPlaceHolder();
      }
    }
    return returnJson;
  }

  Future<List<String>?> getMyListSharePreference(String spName)async{
    SharedPreferences myPreferences = await SharedPreferences.getInstance();
    List<String>? returnStringList;
    if(myPreferences.containsKey(spName)){
      returnStringList = myPreferences.getStringList(spName);
    }else{
      print("Shared Preference is empty");
    }

    return returnStringList;
  }

  Future<List<String>?> myListSharePreference(String spName, String setOrGet, List<String> myTokenListToSave)async{
    SharedPreferences myPreferences = await SharedPreferences.getInstance();
    List<String>? returnJson;
    if(setOrGet == 'set'){
      myPreferences.setStringList(spName, myTokenListToSave);
    }
    else if(setOrGet == 'get'){
      returnJson = myPreferences.getStringList(spName);
      //return returnJson;
    }
    if(setOrGet == 'remove'){
      await myPreferences.remove(spName);
      //myPreferences.clear();
    }
    return returnJson;
  }

  Future<void> populateDatabase(int fileoneOrTwo) async{
    DatabaseHelperMessages dbHelperMessage = DatabaseHelperMessages();
    List<List<String>> messageList = DBSource().workoutArray;

    if(fileoneOrTwo == 1) {
      for (int i = 0; i < messageList.length; i++) {
        Messages msgItem = Messages(messageList[i][0], messageList[i][1], "No");
        //print(messageList[i][1]);
        int rsslt = await dbHelperMessage.insertMessagesItems(msgItem);
        print(rsslt);
        print(messageList.length);

      }
    }

  }

  //////////////////////////////////////////////////////////////

  Future<bool> checkIfFavorited(String msg) async{
    DatabaseHelperMessages dbHelperMessage = DatabaseHelperMessages();
    return await dbHelperMessage.checkMsgIfFavorited(msg);
  }

  Future<List<Messages>> getSelectedCatMessage(String category) async{
    DatabaseHelperMessages dbHelperMessage = DatabaseHelperMessages();
    Messages dName = Messages(category,"","");
    return await dbHelperMessage.getSelectedMessagesItems(dName);
  }



  Future<List<Messages>> getMyFavoriteMsg() async{
    DatabaseHelperMessages dbHelperMessage = DatabaseHelperMessages();
    return await dbHelperMessage.getAllFavoriteMessage();
  }

  Future<List<Messages>> getSelectedMessageByCategory(String category) async{
    DatabaseHelperMessages dbHelperMessage = DatabaseHelperMessages();
    return await dbHelperMessage.getMessagesByCategory(category);
  }

  Future<List<Messages>> getAllMessage() async{
    DatabaseHelperMessages dbHelperMessage = DatabaseHelperMessages();
    return await dbHelperMessage.getAllMessagesItems();
  }

  Future<int> saveMessagesItems(String category,String message, String favorite)async{
    DatabaseHelperMessages dbHelperMessage = DatabaseHelperMessages();
    Messages workme = Messages(category, message,favorite);
    return await dbHelperMessage.insertMessagesItems(workme);
  }

  Future<bool> updateFavorite(String category,String message, String favorite)async{
    DatabaseHelperMessages dbHelperMessage = DatabaseHelperMessages();
    Messages msg = Messages(category, message,favorite);
    return await dbHelperMessage.updateMessagesFavorite(msg);
  }

  ///////////////////////////////////////////////////
  Future<List<NotesTable>> getAllNotesTableItems()async{
    DatabaseHelperNotesTable dbHelperNotesTable = DatabaseHelperNotesTable();
    return await dbHelperNotesTable.getAllNotesTableItems();
  }

  Future<int> saveNoteItems(String time, String body)async{
    DatabaseHelperNotesTable dbHelperNotesTable = DatabaseHelperNotesTable();
    NotesTable note = NotesTable(time, body);
    return await dbHelperNotesTable.saveNoteItems(note);
  }

  Future<bool> updateNotesTable(String notebody)async{
    DatabaseHelperNotesTable dbHelperTable = DatabaseHelperNotesTable();
    NotesTable note = NotesTable('', notebody);
    return await dbHelperTable.updateNotesTable(note);
  }


  Future<int> deleteNote(String notebody)async{
    DatabaseHelperNotesTable dbHelperTable = DatabaseHelperNotesTable();
    NotesTable note = NotesTable('', notebody);
    return await dbHelperTable.deleteNoteItem(note);
  }


//////////////////////////////////////////////////////////////////

  showToast(String toastBody){
    Fluttertoast.showToast(
        msg: toastBody,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 5,
        backgroundColor: Color(0xff1096f3),
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

}