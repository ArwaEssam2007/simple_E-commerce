import 'package:dio/dio.dart';
import '../Models/Product_Model.dart';
class ProductService{
  static Dio dio = Dio();
  static Future<List<Product>> fitchproducts() async{
    List<Product> products = [];
    try{
      Response response = await dio.get('https://student.valuxapps.com/api/home');
      if(response.statusCode == 200){
        for(int i = 0; i < 10; i++){
          products.add(Product.fromJson(response.data, i));
        }
      }
      else{
        throw Exception("failed");
      }
    }
    catch(e){
      print( e);
    }
    return products;
  }
}