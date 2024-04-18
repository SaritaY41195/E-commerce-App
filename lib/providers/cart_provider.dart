import '../models/product_card_model.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier{
  final List<ProductSneakersModel> _cartList =[];
  List<ProductSneakersModel> get cartList => _cartList;

  incrementQty(int index){
    _cartList[index].quantity++;
    notifyListeners();
  }

  decrementQty(int index){
    if(_cartList[index].quantity<=1){
      return;
    }
    _cartList[index].quantity--;
    notifyListeners();
  }

  totalPrice(){
    double total1= 0.0;
    for (ProductSneakersModel element in _cartList){
      total1 += element.price * element.quantity;
    }
    return total1;
  }
}