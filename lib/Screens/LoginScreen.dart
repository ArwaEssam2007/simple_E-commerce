import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/Registration_Provider.dart';
import '../Service/Product_Provider.dart';
import '../Widgets/CustomWIdget_TextFormFeild.dart';
import 'homeScreen.dart';
class Loginscreen extends StatelessWidget {
   Loginscreen({super.key});
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp_Page"),
        leading: Icon(Icons.person),
      ),
      body: Center(
        child: Padding(padding: EdgeInsets.all(5),
          child:Form(
              key: formkey,
              child:
              Column(
                children: [
                  CustomTextWidget(controler: emailcontroller, obsecure: false, hintlabel:"email", validator: (value)
                  {
                    if(value == null || value.isEmpty){
                      return "please enter email";
                    }
                    return "ok";
                  }),
                  CustomTextWidget(controler: passwordcontroller, obsecure: true, hintlabel:"Password", validator: (value)
                  {
                    if(value == null || value.isEmpty){
                      return "please enter password";
                    }
                    return "ok";
                  }),

                  Consumer<Registeration_provider>(builder: (context, value, child) =>MaterialButton(onPressed: (){
                    if(formkey.currentState!.validate()){
                      value.login(email: emailcontroller.text, password: passwordcontroller.text);
                      if(value.registration?.status == true){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                      }
                    }
                    else {
                      ScaffoldMessenger(child: Text("login feild"),);
                    }
                  }),)
                ],
              )
          ) ,
        ),
      ),
    );
  }
}
