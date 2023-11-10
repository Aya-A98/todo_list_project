import 'package:dolist/model/profilemodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/loginmodel.dart';
import '../model/signinmodel.dart';
import '../model/taskmodel.dart';
import '../model/usermodel.dart';

class viewmodel extends ChangeNotifier {
  List<Login> login = <Login>[];
  List<Signin> signin = <Signin>[];
  user User = user("Aya");
  List<task> Task = <task>[];
  profile Profile= profile ("", "", "", "", "", "" );
  String newtask='';




  void updateusername(String name) {
    User.username = name;
    notifyListeners();
  }


  String getusername(String text) {
    return User.username;
  }

  void setlogin(Login l) {
    login.add(l);
    notifyListeners();
  }

  void setsignin(Signin s) {
    signin.add(s);
    notifyListeners();
  }

//------------------------------------------------------------------------------------
//   void updatetask(int taskindex, String text , String newtask) {
//     Task[taskindex].title = text;
//     text=newtask;
//     notifyListeners();
//   }

  // void updatetask(int index, String text ) {
  //   Task[index].title = text;
  //   notifyListeners();
  // }

  String getupdatetask(int index ,String text){
  return Task[index].title;
  }


//int get getlengthoftask=>Task.length;
  int getlengthoftask() {
    return Task.length;
  }

  void settaskvalue(int taskindex, bool taskvalue) {
    Task[taskindex].complete = taskvalue;
    notifyListeners();
  }

  void setaddtask(task t) {
    Task.add(t);
    notifyListeners();
  }


  void deletetask(int index
      //    , deletemodel d
      ) {
    //Delete.add(d);
    Task.removeAt(index);
    notifyListeners();
  }

  void deletealltasks() {
    Task.clear();
    notifyListeners();
  }

  void deletecomplitedtasks() {
    Task = Task.where((task) => !task.complete).toList();
    notifyListeners();
  }

  void updatetitle(int index, String text ) {
    Task[index].title = text;
    notifyListeners();
  }


  String gettitle(int index) {
    return Task[index].title;
  }

  bool getvalue(int index) {
    return Task[index].complete;
  }

  //int get notcompletetasks => Task.where((task) => !task.complete).length;
  int notcompletetasks() {
    return Task
        .where((task) => !task.complete)
        .length;
  }

  int completetasks() {
    return Task
        .where((task) => task.complete)
        .length;
  }


  void buildupdatebottomsheet(Widget updatebuttomsheet, BuildContext context) {
    showBottomSheet(context: context, builder: (context) {
      return updatebuttomsheet;
    });
  }


  void builddeletebottomsheet(Widget deletebuttomsheet, BuildContext context) {
    showBottomSheet(context: context, builder: (context) {
      return deletebuttomsheet;
    });
  }
//-------------------------------------------------------------------------------------------------------------------

  void setcaption (String text) {
    Profile.caption = text;
    notifyListeners();
  }

  String getcaption(String text) {
    return Profile.caption;
  }

  void setbirthday (String text) {
    Profile.birthday = text;
    notifyListeners();
  }

  String getbirthday(String text) {
    return Profile.birthday;
  }

  void setphone (String text) {
    Profile.phone = text;
    notifyListeners();
  }

  String getphone(String text) {
    return Profile.phone;
  }

  void setcity (String text) {
    Profile.city = text;
    notifyListeners();
  }

  String getcity(String text) {
    return Profile.city;
  }

  void sethobby (String text) {
    Profile.hobby = text;
    notifyListeners();
  }

  String gethobby(String text) {
    return Profile.hobby;
  }

  void setaboutme (String text) {
    Profile.aboutme = text;
    notifyListeners();
  }

  String getaboutme(String text) {
    return Profile.aboutme;
  }

  }
