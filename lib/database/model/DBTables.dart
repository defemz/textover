class Messages {
  int? id;
  String? _category;
  String? _message;
  String? _isfavorite;



  Messages(this._category,this._message,this._isfavorite);

  Messages.map(dynamic obj) {
    this._category = obj["category"];
    this._message = obj["message"];
    this._isfavorite = obj["isfavorite"];

  }

  String? get category => _category;
  String? get message => _message;
  String? get isfavorite => _isfavorite;


  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["category"] = _category;
    map["message"] = _message;
    map["isfavorite"] = _isfavorite;

    return map;
  }
  void setCustomUnitsItemId(int id){
    this.id = id;
  }
}

///////////////////////////////////////////////
class Schedule {
  int? id;
  String? _phoneno;
  String? _message;
  String? _time;



  Schedule(this._phoneno,this._message,this._time);

  Schedule.map(dynamic obj) {
    this._phoneno = obj["phoneno"];
    this._message = obj["message"];
    this._time = obj["time"];

  }

  String? get phoneno => _phoneno;//e.g western food
  String? get message => _message;
  String? get time => _time;


  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["phoneno"] = _phoneno;
    map["message"] = _message;
    map["time"] = _time;

    return map;
  }
  void setCustomUnitsItemId(int id){
    this.id = id;
  }
}

//###########################################################


class NotesTable {
  int? id;
  String? _time;//e.g western food
  String? _noteBody;





  NotesTable(this._time,this._noteBody,);

  NotesTable.map(dynamic obj) {
    this._time = obj["time"];
    this._noteBody = obj["noteBody"];


  }

  String? get time => _time;//e.g western food
  String? get noteBody => _noteBody;



  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["time"] = _time;
    map["noteBody"] = _noteBody;

    return map;
  }
  void setCustomUnitsItemId(int id){
    this.id = id;
  }
}

//###########################################################