import 'package:flutter/material.dart';
import 'package:untitled/Widgets/CustomWIdget_TextFormFeild.dart';
import 'package:provider/provider.dart';
import '../Provider/Registration_Provider.dart';
import '../Service/Product_Provider.dart';
import 'LoginScreen.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp_Page"),
        leading: Icon(Icons.person),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Form(
              key: formkey,
              child: Column(
                children: [
                  CustomTextWidget(
                      controler: emailcontroller,
                      obsecure: false,
                      hintlabel: "username",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter  email";
                        }
                        return "ok";
                      }),
                  CustomTextWidget(
                      controler: namecontroller,
                      obsecure: false,
                      hintlabel: "email",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter name";
                        }
                        return "ok";
                      }),
                  CustomTextWidget(
                      controler: passwordcontroller,
                      obsecure: true,
                      hintlabel: "Password",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter password";
                        }
                        return "ok";
                      }),
                  CustomTextWidget(
                      controler: phonecontroller,
                      obsecure: false,
                      hintlabel: "phone",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter phone";
                        }
                        return "ok";
                      }),
              Consumer<Registeration_provider>(builder: (context, value, child) {
                return MaterialButton(onPressed: (){
                  if(formkey.currentState?.validate != null){
                    value.signup(email: emailcontroller.text,
                        password: passwordcontroller.text,
                        name: namecontroller.text,
                        phone: phonecontroller.text);
                  }
                  if(value.registration!.status){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen(),)
                    );
                  }
                  else{
                    ScaffoldMessenger(child: Text("signup feild"),);
                  }
                }, child: Text("Sign up"),);
              },)
                ],
              )),
        ),
      ),
    );
  }
}
