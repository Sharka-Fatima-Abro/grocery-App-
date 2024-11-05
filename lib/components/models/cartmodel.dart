import 'package:flutter/material.dart';

class Cartmodel extends ChangeNotifier {
  // Declare the list with proper type
  final List<List<dynamic>> _shopItems = [
    ['Avocado', '4.00', 'assets/sundas.png', Colors.green],
    ['Banana', '4.70', 'assets/banana.png', Colors.yellow],
    ['Chicken', '6.00', 'assets/chicken.png', Colors.brown],
    ['Water', '3.00', 'assets/water.png', Colors.blue],
  ];

  List<List<dynamic>> _cartItems = []; // Correctly declare cartItems

  // Getter for shop items
  List<List<dynamic>> get shopItems => _shopItems;

  // Getter for cart items
  List<List<dynamic>> get cartItems => _cartItems;

  void addItemTocart(int index) {
    _cartItems.add(_shopItems[index]); // Use _cartItems instead of -cartItems
    notifyListeners();
  }

  void removeItemTocart(int index) {
    if (_cartItems.isNotEmpty && index < _cartItems.length) {
      _cartItems.removeAt(index); // Use _cartItems instead of -cartItems
      notifyListeners();
    }
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(
          _cartItems[i][1]); // Use _cartItems instead of -cartItems
    }
    return totalPrice.toStringAsFixed(2);
  }
}
