// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:twitter/theme/pallete.dart';

class AuthField extends StatelessWidget {

final  TextEditingController controller;
final String hintText;
  const AuthField({
    Key? key,
    required this.controller,required this.hintText
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Pallete.blueColor,
            width: 3
          ),
          
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Pallete.greyColor,
            
          ),
          
        ),
        contentPadding: const EdgeInsets.all(22),
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 18)
       // border: OutlineInputBorder()
      ),
    );
  }
}
