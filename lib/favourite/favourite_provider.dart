import 'package:flutter/material.dart';

class FavouriteProvider extends ChangeNotifier {
  final List<int> _favouriteItems = [];

  List<int> get favouriteItems => _favouriteItems;

  void addFavouriteItem(int item) {
    _favouriteItems.add(item);
    notifyListeners();
  }

  void removeFavouriteItem(int item) {
    _favouriteItems.remove(item);
    notifyListeners();
  }
}
