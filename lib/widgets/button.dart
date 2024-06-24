import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  final String text;
  final Color bgColor;
  final Color textColor;
  
  const Button({
    super.key, 
    required this.text, 
    required this.bgColor, 
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.all(Radius.circular(45)),
      ),
      child:Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 42),
        child: Text(
          text,
          style:TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      )
    );
  }
}