import 'package:flutter/material.dart';
import 'package:newproject/screens/cal/components/calbody.dart';
class Cal extends StatelessWidget {
  const Cal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:CalBody() ,
    appBar: AppBar(title:Text("CALC"),
    backgroundColor: Colors.lightGreenAccent,) ,
    backgroundColor: Colors.cyanAccent,);
  }
}
