import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(

      child: TextButton(
        child: Text("You are logged in!",style: TextStyle(color: Colors.white),),
        onPressed: () { Navigator.pop(context); },),
    );
  }
}