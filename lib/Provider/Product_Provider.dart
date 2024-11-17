import 'package:flutter/material.dart';
import '../Models/Product_Model.dart';
import '../Service/Product_Provider.dart';

class ProductProvider extends ChangeNotifier {
  List<Product> products = [];
  bool isLoading = false;
  Future<void> fitchproducts() async{
    isLoading = true;
    products = await ProductService.fitchproducts();
    isLoading = false;
    notifyListeners();
  }
}