import 'package:flutter/material.dart';
import '../models/product.dart';

class CartProvider with ChangeNotifier {
  final Map<String, int> _items = {}; // productId -> quantity
  final Map<String, Product> _productMap = {}; // Store product reference

  Map<String, int> get items => _items;

  List<Product> get cartProducts => _items.keys
      .map((id) => _productMap[id]!)
      .toList();

  double get totalPrice {
    double total = 0.0;
    _items.forEach((id, qty) {
      total += _productMap[id]!.price * qty;
    });
    return total;
  }

  void addToCart(Product product) {
    if (_items.containsKey(product.id)) {
      _items[product.id] = _items[product.id]! + 1;
    } else {
      _items[product.id] = 1;
      _productMap[product.id] = product;
    }
    notifyListeners();
  }

  void removeFromCart(String productId) {
    _items.remove(productId);
    _productMap.remove(productId);
    notifyListeners();
  }

  void updateQuantity(String productId, int quantity) {
    if (quantity <= 0) {
      removeFromCart(productId);
    } else {
      _items[productId] = quantity;
    }
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    _productMap.clear();
    notifyListeners();
  }
}
