import 'package:flutter/material.dart';
import '../Models/Product_Model.dart';
import '../Screens/productDetails.dart';
class CustomProductContainer extends StatelessWidget {
  Product product;
  CustomProductContainer({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black)
        ),
        child: Center(
          child: Column(
            children: [
              InkWell(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailsScreen(product: product),)),
                  child: Image(height: 100, width: 100,image: NetworkImage(product.imageLink))),
              Text(product.name),
              Text("${product.price}")
            ],
          ),
        ),
      ),
    );
  }
}
