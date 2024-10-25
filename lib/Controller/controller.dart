import 'package:exam/Service/data_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

class ContactController1 extends GetxController {
  List data = [];
  TextEditingController txtName = TextEditingController();
  TextEditingController txtNumber = TextEditingController();
  TextEditingController txtEmail = TextEditingController();

  Future insertData(String title, amount, date, food, transport) async {
    DatabaseHelper.helper.insertData(title, amount, date, food, transport);

    // notifyListeners();
  }

  void deleteData(int index) {
    DatabaseHelper.helper.deleteData(index);
  }
}

TextEditingController txtTitle = TextEditingController();
TextEditingController txtAmount = TextEditingController();
TextEditingController txtDate = TextEditingController();
TextEditingController txtFood = TextEditingController();
TextEditingController txtTransport = TextEditingController();
