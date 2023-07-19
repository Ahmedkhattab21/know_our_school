//TODO: add your view model class here



import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:know_our_school/Model/model.dart';

class SchoolModel with ChangeNotifier {
  String schoolName = "School Name";
  String schoolAddress = "School Address";
  String studentsNo = "Number of Students";
  String teachersNo = "Number of Teachers";
  
  getSchoolInfo()async{
    final response =
    await rootBundle.loadString('lib/JSONdata/SchoolData.json');
    final parsed = School.fromJson(jsonDecode(response)[0]);

    schoolName=parsed.name;
    schoolAddress=parsed.address;
    studentsNo=parsed.numberOfStudents;
    teachersNo=parsed.numberOfTeachers;

    notifyListeners();
  }
}
