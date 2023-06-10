

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:newproject/screens/homepage/home.dart';
class Login_body extends StatefulWidget {
  const Login_body({Key? key}) : super(key: key);

  @override
  State<Login_body> createState() => _Login_bodyState();
}

class _Login_bodyState extends State<Login_body> {
  TextEditingController con1 = new TextEditingController();
  TextEditingController con2 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return

      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 150,left: 50),
              child: Row(
                children: [
                  Image.network("https://play-lh.googleusercontent.com/_Di6LMNGS1QpiVQLFvYjEgNQX-BpOdRD-ddM2mpwS3ZAo8_4aIIbqviQAk9IcdYKUAWT=w240-h480-rw",
                      width: 75,height: 75, ),
                  Text("KARTALOG",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,fontFamily: "Changa_One"),),
                ],
              ),
            ),
            Container(
            //child: Text("KARTALOG"),
            height: 450,
            margin: EdgeInsets.only(top: 20,bottom: 110,right: 30,left: 30),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xffEAD300),Color(0xffEAAA00)],begin: Alignment.topCenter
              ,end: Alignment.bottomCenter),
              borderRadius: BorderRadius.circular(10),),
            child: Column(
              children: [
                SizedBox(height: 35),
                Text("Welcome Kartalog",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,fontFamily: 'Mulish'),),
                SizedBox(height: 20),
                Text("Login to your account",style: TextStyle(fontSize: 13,color: Colors.white),),
                SizedBox(height: 25),
                Container(

                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email",style: TextStyle(fontSize: 13,color: Colors.white),),
                      TextField(controller: con1,style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                      SizedBox(height: 25),
                      Text("Password",style: TextStyle(fontSize: 13,color: Colors.white),),
                      TextFormField(obscureText: true,controller: con2,),


                    ],

                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: 200,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),),);

                    },
                    child: Text("Login to your account",style: TextStyle(fontSize: 12,color: Colors.white),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  ),
                ),
                SizedBox(height: 10),
                Text("Forgot your password?",style: TextStyle(decoration: TextDecoration.underline,fontSize: 10),),

              ],
            ),
    ),
          ],
        ),
      );

  }
}