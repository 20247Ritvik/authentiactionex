import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

 final Function()? onTap;
 final String? btntitle;
  const MyButton({super.key, required this.onTap, required this.btntitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(color: Colors.black,
        borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(btntitle!,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
