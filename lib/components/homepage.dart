import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final user = FirebaseAuth.instance.currentUser;
  void signout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [IconButton(onPressed: signout, icon: Icon(Icons.logout))]),
      body: Center(
        child: Text("Logged In Successfully!! ${user?.email}",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
      ),
    );
  }
}
