import 'package:flutter/material.dart';
class CalBody extends StatefulWidget {
   CalBody({Key? key}) : super(key: key);

  @override
  State<CalBody> createState() => _CalBodyState();
}

class _CalBodyState extends State<CalBody> {
  TextEditingController num1Controller=new TextEditingController();

  TextEditingController num2Controller=new TextEditingController();

  String total="";

  void add(){
    setState(() {
      int n1=int.parse(num1Controller.text);
      int n2=int.parse(num2Controller.text);
      total=(n1+n2).toString();
    });

  }

  void mul(){
    setState(() {
      int n1=int.parse(num1Controller.text);
      int n2=int.parse(num2Controller.text);
      total=(n1*n2).toString();
    });

  }

  void sub(){
    setState(() {
      int n1=int.parse(num1Controller.text);
      int n2=int.parse(num2Controller.text);
      total=(n1-n2).toString();
    });
  }

  void div(){
    setState(() {
      int n1=int.parse(num1Controller.text);
      int n2=int.parse(num2Controller.text);
      total=(n1/n2).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Center(
      child: Column(children: [
        Text("Number1"),
      new TextField(controller: num1Controller),
        Text("Number2"),
        new TextField(controller: num2Controller),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            ElevatedButton(onPressed: (){add();},
                child: Text("ADD"),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent)),
            ElevatedButton(onPressed: (){sub();},
                child: Text("SUB"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple)),
            ElevatedButton(onPressed: (){mul();},
                child: Text("MUL"),
    style: ElevatedButton.styleFrom(backgroundColor: Colors.amber)),
            ElevatedButton(onPressed: (){div();},
                child: Text("DIV"),
    style: ElevatedButton.styleFrom(backgroundColor: Colors.green)),
          ],
        ),
        Text("RESULT: "+ total),
      ],),
    ));
  }
}


