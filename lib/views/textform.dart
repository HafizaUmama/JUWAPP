import 'package:flutter/material.dart';
import 'package:juw_services/constants/utils.dart';

class TextFormGlobal extends StatelessWidget {
  const TextFormGlobal({super.key,required this.controller, required this.text, required this.textInputType,required this.obscure});

  final TextEditingController controller;

  final String text;

  final TextInputType textInputType;

  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: EdgeInsets.only(top: 3, left: 15),
      decoration: BoxDecoration(
          color: Color1.whitecolor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 7)
          ]),
      child: TextField(
        controller: controller,
        obscureText: obscure,
        keyboardType: textInputType,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text,
          hintStyle: TextStyle(height: 1),
          contentPadding: EdgeInsets.all(0),
        ),
      ),

      
    );
  }
}
