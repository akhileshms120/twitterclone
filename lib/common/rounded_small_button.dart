// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:twitter/theme/pallete.dart';

class RoundedSmallButton extends StatelessWidget {
  
  final VoidCallback onTap;
  final String label;
  final Color backgroundColor;
  final Color textColor;
  const RoundedSmallButton({
    Key? key,
    required this.onTap,
    required this.label,
     this.backgroundColor=Pallete.whiteColor,
     this.textColor=Pallete.backgroundColor
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Chip(backgroundColor: backgroundColor,
    labelPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      label:Text(label,style:  TextStyle(color: textColor),));
  }
}
