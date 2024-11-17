import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/Product_Provider.dart';
import '../Widgets/CUstomWidget-Product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Products"),
            centerTitle: true
        ),
        body: Consumer<ProductProvider>(builder: (context, value, child) {
          value.fitchproducts();
          return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: value.products.length,
              itemBuilder: (context, index) {
                return CustomProductContainer(product: value.products[index]);
              }
          );
        },
        ));
  }
}