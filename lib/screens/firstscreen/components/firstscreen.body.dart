import 'package:flutter/material.dart';

class FirstScreenBody extends StatefulWidget {
  const FirstScreenBody({Key? key}) : super(key: key);

  @override
  State<FirstScreenBody> createState() => _FirstScreenBodyState();
}

class _FirstScreenBodyState extends State<FirstScreenBody> {
  TextEditingController num1controller = new TextEditingController();

  TextEditingController num2controller = new TextEditingController();
  String result="0";
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          Container(
            child: new TextField(
                controller: num1controller),
          ),
          Container(
            child: new TextField(controller: num2controller),
          ),
          ElevatedButton(
              child: Text("Add"),
              onPressed: () {
                setState(() {
                  int sum = int.parse(num1controller.text) +
                      int.parse(num2controller.text);
                  result = sum.toString();
                });
              }

          ),
          Column(
            children: [
              Text("Result:"),
              Text(result),
            ],

          )
        ],
      ),
    );
  }
}
