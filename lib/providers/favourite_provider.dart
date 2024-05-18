import 'package:flutter/material.dart';
import '../models/product_card_model.dart';


class FavProvider extends ChangeNotifier{
  final List<ProductSneakersModel> _favouriteList = [];
  List<ProductSneakersModel> get favouriteList => _favouriteList;

  void toggelFavourite(ProductSneakersModel productSneakersModel){
    if(_favouriteList.contains(productSneakersModel)){
      _favouriteList.remove(productSneakersModel);
    }else{
      _favouriteList.add(productSneakersModel);
    }
    notifyListeners();
  }

  bool isExist(ProductSneakersModel productSneakersModel){
    final isExist = _favouriteList.contains(productSneakersModel);
    return isExist;
  }

  void incrementQuantity(ProductSneakersModel productSneakersModel){
    productSneakersModel.quantity++;
    notifyListeners();
  }

  void decrementQuantity(ProductSneakersModel productSneakersModel){
    productSneakersModel.quantity--;
    notifyListeners();
  }
}