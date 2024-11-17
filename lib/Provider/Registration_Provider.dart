import 'package:flutter/cupertino.dart';

import '../Models/Registeration_Model.dart';
import '../Service/Registration_Service.dart';
class Registeration_provider extends ChangeNotifier{
  Registration ? registration ;
  Future<void>login({required String email , required String password})async{
    registration = await Registration_Service.login(email, password);
    notifyListeners();
  }

  Future<void>signup({required String email , required String password , required String name , required String phone})async{
    registration = await Registration_Service.signup(email, password, name, phone);
    notifyListeners();
  }
}