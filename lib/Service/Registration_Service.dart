import 'package:dio/dio.dart';

import '../Models/Registeration_Model.dart';
class Registration_Service{
  static Dio dio = Dio();
  static Future<Registration>login(String email , String password)async{
    try{
      Response response = await dio.post("https://student.valuxapps.com/api/login" , data: {
        'email':email,
        'password':password,
      });
      if(response.statusCode == 200){
        return Registration.fromjson(response.data);
      }
      else{
        throw Exception("has an error");
      }
    }
    catch(e){
      throw(e);
    }
  }
  static Future<Registration>signup(String email , String password , String name , String phone)async{
    try{
      Response response = await dio.post("https://student.valuxapps.com/api/login" , data: {
        'email':email,
        'password':password,
        'name':name ,
         'phone':phone,
      });
      if(response.statusCode == 200){
        return Registration.fromjson(response.data);
      }
      else{
        throw Exception("has an error");
      }
    }
    catch(e){
      throw(e);
    }
  }
}