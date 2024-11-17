import 'package:flutter/material.dart';

import '../Models/Product_Model.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductDetailsScreen({super.key , required this.product});
  Product product ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Column(
        children: [
          Image(image: product.imageLink),
          Text(product.name),
          Text(product.description)
        ],
      ),
    ),
    );
  }
}
