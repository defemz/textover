import 'dart:async';
import 'dart:io' as io;
import 'dart:math';
import 'package:path_provider/path_provider.dart';

import 'model/DBTables.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';




//###############################################################

class DatabaseHelperMessages {
  static final DatabaseHelperMessages _instance = DatabaseHelperMessages.internal();
  factory DatabaseHelperMessages() => _instance;
  static Database _db;

  Future<Database> get db async{
    if (_db != null) return _db;
    _db = await initDb();
    return _db;
  }

  DatabaseHelperMessages.internal();
  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "messagefiledb.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

  void _onCreate(Database db, int version) async {
    // When creating the db, create the table
    await db.execute(
        "CREATE TABLE Messages(id INTEGER PRIMARY KEY, category TEXT, message TEXT, isfavorite TEXT)");
  }


  // This method has not been tested
  void onDestroyTable() async{
    var dbClient = await db;
    var x = await dbClient.rawQuery('DROP TABLE Messages');
    print(x);
  }

  //This function add a new favoriteItem to the table
  //Where Favorite fav is the table class name(initialization parameters of table class)
  Future<int> saveMessagesItems(Messages items) async {
    var dbClient = await db;
    int res = await dbClient.insert("Messages", items.toMap());
    //print(res);
    return res;
  }

  Future<int> insertMessagesItems(Messages items) async {
    var dbClient = await db;
    String category = items.category;
    String message = items.message;
    String favorite = items.isfavorite;
    //int res = await dbClient.insert("Messages", items.toMap());
    int res = await dbClient.rawInsert("""
    INSERT INTO Messages (category, message, isfavorite)
    SELECT category, message, isfavorite
    FROM (SELECT "$category" as category, "$message" as message, "$favorite"as isfavorite) t
    WHERE NOT EXISTS (SELECT 1 FROM Messages u WHERE u.message = t.message)
    """);
    //print(res);
    return res;
  }

  //This function returns the food category items from table
  Future<List<Messages>> getAllMessagesItems() async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Messages');
    List<Messages> dietPlanItems = new List();
    for (int i = 0; i < list.length; i++) {
      Messages unit =
      Messages(list[i]["category"], list[i]["message"],list[i]["isfavorite"]);
      dietPlanItems.add(unit);
      //print(list[i]["foodCategory"]);
    }
    //print(favoriteItems.length);
    return dietPlanItems;
  }

  //This function returns the food category items from table
  Future<List<Messages>> getMessagesByCategory(String category) async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Messages WHERE category =?', [category]);
    List<Messages> dietPlanItems = new List();
    for (int i = 0; i < list.length; i++) {
      Messages unit =
      Messages(list[i]["category"], list[i]["message"], list[i]["isfavorite"]);
      dietPlanItems.add(unit);
      //print(list[i]["foodCategory"]);
    }
    //print(favoriteItems.length);
    return dietPlanItems;
  }

  Future<List<Messages>> getAllFavoriteMessage() async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Messages WHERE isfavorite = "Yes"');
    List<Messages> dietPlanItems = new List();
    for (int i = 0; i < list.length; i++) {
      Messages unit =
      Messages(list[i]["category"], list[i]["message"], list[i]["isfavorite"]);
      dietPlanItems.add(unit);
      //print(list[i]["foodCategory"]);
    }
    //print(favoriteItems.length);
    return dietPlanItems;
  }

  Future<bool> checkMsgIfFavorited(String msg) async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery("SELECT * FROM Messages WHERE message =?", [msg]);
    bool isItFavorited = false;
    for (int i = 0; i < list.length; i++) {
      if(list[i]["isfavorite"] == "Yes"){
        isItFavorited = true;
      }
    }
    return isItFavorited;
  }

  //This function delete the custom unit item from the Favorite table
  Future<int> deleteMessagesItem(Messages item) async {
    var dbClient = await db;
    int res =
    await dbClient.rawDelete('DELETE FROM Messages WHERE message = ?', [item.message]);

    return res;
  }

  //This function delete all custom units from the  CustomUnits table
  Future<int> deleteAllMessagesItems() async {
    var dbClient = await db;
    int res = await dbClient.rawDelete('DELETE FROM Messages');
    return res;
  }

  Future<List<Messages>> getSelectedMessagesItems(Messages item) async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Messages WHERE category = ?',
        [item.category]);
    //List<Map> list = await dbClient.rawQuery('SELECT * FROM CelebDietTable',);
    List<Messages> messageItems = new List();
    for (int i = 0; i < list.length; i++) {
      Messages unit =
      Messages(list[i]["category"], list[i]["message"], list[i]["isfavorite"]);
      messageItems.add(unit);
      //print(favoriteItems);
    }
    if(messageItems == null){

    }
    return messageItems;
  }


  Future<int> getMessagesItemsCount() async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Messages');
    int itemCount = list.length;
    return itemCount;
  }

  //This function update the Favorite table
  Future<bool> updateMessagesTable(Messages category) async {
    var dbClient = await db;
    int res =   await dbClient.update("Messages", category.toMap(),
        where: "id = ?", whereArgs: <int>[category.id]);
    return res > 0 ? true : false;
  }

  Future<bool> updateMessagesFavorite(Messages msg) async {
    var dbClient = await db;
    int res =   await dbClient.update("Messages", msg.toMap(),
        where: "message = ?", whereArgs: <String>[msg.message]);
    return res > 0 ? true : false;
  }
}


//###############################################################

class DatabaseHelperSchedule {
  static final DatabaseHelperSchedule _instance = DatabaseHelperSchedule.internal();
  factory DatabaseHelperSchedule() => _instance;
  static Database _db;

  Future<Database> get db async{
    if (_db != null) return _db;
    _db = await initDb();
    return _db;
  }

  DatabaseHelperSchedule.internal();
  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "schedulefiledb.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

  void _onCreate(Database db, int version) async {
    // When creating the db, create the table
    await db.execute(
        "CREATE TABLE Schedule(id INTEGER PRIMARY KEY, phoneno TEXT, message TEXT, time TEXT)");
  }


  // This method has not been tested
  void onDestroyTable() async{
    var dbClient = await db;
    var x = await dbClient.rawQuery('DROP TABLE Schedule');
    print(x);
  }

  //This function add a new favoriteItem to the table
  //Where Favorite fav is the table class name(initialization parameters of table class)
  Future<int> saveScheduleItems(Schedule items) async {
    var dbClient = await db;
    int res = await dbClient.insert("Schedule", items.toMap());
    //print(res);
    return res;
  }

  Future<int> insertScheduleItems(Schedule items) async {
    var dbClient = await db;
    String phone = items.phoneno;
    String msg = items.message;
    String time = items.time;
    //int res = await dbClient.insert("Messages", items.toMap());
    int res = await dbClient.rawInsert("""
    INSERT INTO Messages (category, message, isfavorite)
    SELECT category, message, isfavorite
    FROM (SELECT '$phone' as category, '$msg' as message, '$time' as isfavorite) t
    WHERE NOT EXISTS (SELECT 1 FROM Messages u WHERE u.message = t.message)
    """);
    //print(res);
    return res;
  }

  //This function returns the food category items from table
  Future<List<Schedule>> getAllScheduleItems() async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Schedule');
    List<Schedule> scheduleItems = new List();
    for (int i = 0; i < list.length; i++) {
      Schedule unit =
      Schedule(list[i]["phoneno"], list[i]["message"],list[i]["time"]);
      scheduleItems.add(unit);
      //print(list[i]["foodCategory"]);
    }
    //print(favoriteItems.length);
    return scheduleItems;
  }

  //This function returns the food category items from table
  Future<List<Messages>> getMessagesByCategory(String category) async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Messages WHERE category =?', [category]);
    List<Messages> dietPlanItems = new List();
    for (int i = 0; i < list.length; i++) {
      Messages unit =
      Messages(list[i]["category"], list[i]["message"], list[i]["isfavorite"]);
      dietPlanItems.add(unit);
      //print(list[i]["foodCategory"]);
    }
    //print(favoriteItems.length);
    return dietPlanItems;
  }

  Future<List<Messages>> getFavoriteMessageByCategory(String category) async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Messages WHERE isfavorite = "Yes" AND category =?', [category]);
    List<Messages> dietPlanItems = new List();
    for (int i = 0; i < list.length; i++) {
      Messages unit =
      Messages(list[i]["category"], list[i]["message"], list[i]["isfavorite"]);
      dietPlanItems.add(unit);
      //print(list[i]["foodCategory"]);
    }
    //print(favoriteItems.length);
    return dietPlanItems;
  }

  //This function delete the custom unit item from the Favorite table
  Future<int> deleteScheduleItem(String item) async {
    var dbClient = await db;
    int res =
    await dbClient.rawDelete('DELETE FROM Schedule WHERE time = ?', [item]);

    return res;
  }

  //This function delete all custom units from the  CustomUnits table
  Future<int> deleteAllMessagesItems() async {
    var dbClient = await db;
    int res = await dbClient.rawDelete('DELETE FROM Messages');
    return res;
  }

  Future<List<Messages>> getSelectedMessagesItems(Messages item) async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Messages WHERE message = ?',
        [item.message]);
    //List<Map> list = await dbClient.rawQuery('SELECT * FROM CelebDietTable',);
    List<Messages> messageItems = new List();
    for (int i = 0; i < list.length; i++) {
      Messages unit =
      Messages(list[i]["category"], list[i]["message"], list[i]["isfavorite"]);
      messageItems.add(unit);
      //print(favoriteItems);
    }
    if(messageItems == null){

    }
    return messageItems;
  }


  Future<int> getMessagesItemsCount() async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Messages');
    int itemCount = list.length;
    return itemCount;
  }

  //This function update the Favorite table
  Future<bool> updateMessagesTable(Messages category) async {
    var dbClient = await db;
    int res =   await dbClient.update("Messages", category.toMap(),
        where: "id = ?", whereArgs: <int>[category.id]);
    return res > 0 ? true : false;
  }

  Future<bool> updateMessagesFavorite(Messages msg) async {
    var dbClient = await db;
    int res =   await dbClient.update("Messages", msg.toMap(),
        where: "message = ?", whereArgs: <String>[msg.message]);
    return res > 0 ? true : false;
  }
}

//###############################################################


class DatabaseHelperNotesTable {
  static final DatabaseHelperNotesTable _instance = DatabaseHelperNotesTable.internal();
  factory DatabaseHelperNotesTable() => _instance;
  static Database _db;

  Future<Database> get db async{
    if (_db != null) return _db;
    _db = await initDb();
    return _db;
  }

  DatabaseHelperNotesTable.internal();
  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "notestabledbfile.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

  void _onCreate(Database db, int version) async {
    // When creating the db, create the table
    await db.execute(
        "CREATE TABLE NotesTable(id INTEGER PRIMARY KEY, time TEXT,noteBody TEXT)");
  }


  // This method has not been tested
  void onDestroyTable() async{
    var dbClient = await db;
    var x = await dbClient.rawQuery('DROP TABLE NotesTable');
    print(x);
  }

  //This function add a new favoriteItem to the table
  //Where Favorite fav is the table class name(initialization parameters of table class)
  Future<int> saveNoteItems(NotesTable items) async {
    var dbClient = await db;
    int res = await dbClient.insert("NotesTable", items.toMap());
    //print(res);
    return res;
  }

  //This function returns the food category items from table
  Future<List<NotesTable>> getAllNotesTableItems() async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM NotesTable');
    List<NotesTable> notesTableItems = new List();
    // for (int i = 0; i < list.length; i++) {
    for (int i = list.length-1; i >= 0 ; i--) {
      NotesTable unit =
      NotesTable(list[i]["time"], list[i]["noteBody"]);
      notesTableItems.add(unit);
      //print(list[i]["foodCategory"]);
    }
    //print(favoriteItems.length);
    return notesTableItems;
  }

  //This function delete the custom unit item from the Favorite table
  Future<int> deleteNoteItem(NotesTable item) async {
    var dbClient = await db;
    int res =
    await dbClient.rawDelete('DELETE FROM NotesTable WHERE noteBody = ?', [item.noteBody]);
    return res;
  }

  //This function delete all custom units from the  CustomUnits table
  Future<int> deleteAllDietPlanTableItems() async {
    var dbClient = await db;
    int res = await dbClient.rawDelete('DELETE FROM NotesTable');
    return res;
  }

  Future<List<NotesTable>> getSelectedMeditationItems(NotesTable item) async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM NotesTable WHERE time = ?',
        [item.time]);
    //List<Map> list = await dbClient.rawQuery('SELECT * FROM CelebDietTable',);
    List<NotesTable> notesTableItems = new List();
    for (int i = 0; i < list.length; i++) {
      NotesTable unit =
      NotesTable(list[i]["time"], list[i]["noteBody"]);
      notesTableItems.add(unit);
      //print(favoriteItems);
    }
    if(notesTableItems == null){
    }
    return  notesTableItems;
  }


  Future<int> getMeditationItemsCount() async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM NotesTable');
    int itemCount = list.length;
    return itemCount;
  }

  //This function update the Favorite table
  Future<bool> updateNotesTable(NotesTable med) async {
    var dbClient = await db;
    int res =   await dbClient.update("NotesTable", med.toMap(),
        where: "noteBody = ?", whereArgs: <String>[med.noteBody]);
    return res > 0 ? true : false;
  }
}