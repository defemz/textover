
import 'dart:io';

import 'database/model/DBTables.dart';

File bgFile;

bool myAppHasRun = false;
bool isEditingBackground = false;
bool isPremium = false;
int myAdIntervalIncrement = 1;
bool isBannerLoaded = false;
File backImage;
int emojiShowCount = 0;
List<String> emojiSelectedList = [];
//List<String> textAddedList = [];
bool isItImageBackground;
bool curvedTextIsOn = false;
/////////////////////
String textAdded, textAdded1,textAdded2,textAdded3,textAdded4,textAdded5;
///////////
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