import 'dart:convert';
import 'dart:ffi';
import 'package:http/http.dart' as http;
import 'package:akvt_raspisanie/DB/DB.dart';
import 'package:akvt_raspisanie/models/Para.dart';
import 'package:flutter/material.dart';


class Lessons extends ChangeNotifier{

  // List<ParaDB> lessons = [];
  List<Para> lessons2 = [];
  // List<ParaDB> temp = [];
  Item _item = Item(1, 'ИБ - 11', 'group');

  void ChangeItem(Item item){
    _item = item;
    FillLessons2().then((value) => notifyListeners());

  }
  Item  GetItem(){
    return  _item;
  }

  Future<void> FillLessons2 () async {
    switch(_item.type){
      case 'group':
          final response = await http.get(Uri.parse('http://hnt8.ru:1149/api/LessonPlan/Search/?groupId=${_item.id}&formatting=MobileApp'));
          Iterable iterable = jsonDecode(response.body);
          lessons2 =  iterable.map((e) => Para.fromJson(e)).toList();
          break;
      case 'audience':
        final response = await http.get(Uri.parse('http://hnt8.ru:1149/api/LessonPlan/Search/?audienceId=${_item.id}&formatting=MobileApp'));
        Iterable iterable = jsonDecode(response.body);
        lessons2 =  iterable.map((e) => Para.fromJson(e)).toList();
        break;
      case 'teacher':
        final response = await http.get(Uri.parse('http://hnt8.ru:1149/api/LessonPlan/Search/?teacherId=${_item.id}&formatting=MobileApp'));
        Iterable iterable = jsonDecode(response.body);
        lessons2 =  iterable.map((e) => Para.fromJson(e)).toList();
        break;
    }
  }

  List<Para>  GetLessons2(){
    FillLessons2();
    return  lessons2;
  }
// Future<void> FillLessons () async {
//   final db = AppDB();
//   final isar = await AppDB.isar;
//   db.EditAllParas().then((value) async{
//     temp = await isar.paraDBs.buildQuery<ParaDB>().findAll();
//     });
// }
//
// List<ParaDB>  GetLessons(){
//   return  lessons;
// }
//
// void UpdateLessons(int weekday, String group){
//   FillLessons().then((value) {
//     lessons = temp.where((element) =>
//     element.weekday == weekday &&
//         element.group==group
//     ).toList();
//     notifyListeners();
//   });
// }

}