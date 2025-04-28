import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _dataList = [];

  List<Map<String, dynamic>> get dataList => _dataList;

  void addData(Map<String, dynamic> data) {
    _dataList.add(data);
    notifyListeners();
  }

  void updateData(Map<String, dynamic> updatedData, int index) {
    _dataList[index] = updatedData;
    notifyListeners();
  }

  void deleteData(int index) {
    _dataList.removeAt(index);
    notifyListeners();
  }
}
