import 'package:flutter/material.dart';

class MyTextFields extends StatelessWidget {
  final mcontroller;
  final String mhintText;
  final bool mobsecureText;

   MyTextFields(
      {super.key,
      required this.mcontroller,
      required this.mhintText,
      required this.mobsecureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: TextField(
          controller: mcontroller,
          obscureText: mobsecureText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: mhintText,
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
