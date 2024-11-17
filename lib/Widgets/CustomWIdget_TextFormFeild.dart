import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
   CustomTextWidget({super.key,
     required this.controler , required this.obsecure , required this.hintlabel , required this.validator
   });
 TextEditingController controler ;
 bool obsecure ;
 String hintlabel ;
  String Function(String)validator;
 var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(padding:EdgeInsets.all(8),
    child: Center(
        child: Form(
        key: formkey,
        child: TextFormField(
          controller: controler,
          decoration: InputDecoration(hintText: hintlabel , ),
          obscureText:obsecure ,
        )
    ),
    ),
    );
  }
}
