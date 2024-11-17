import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Screens/Signup_Screen.dart';
import 'Provider/Product_Provider.dart';
import 'Provider/Registration_Provider.dart';
import 'Screens/homeScreen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:[
          ChangeNotifierProvider(create: (context) => Registeration_provider(),),
          ChangeNotifierProvider(create: (context) => ProductProvider(),)
        ],
      child: MaterialApp(
        home: SignupScreen(),
      ),
);
    //jwbkjqwgdk
  }
}
