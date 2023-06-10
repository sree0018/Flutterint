import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newproject/screens/cal/cal.dart';
import 'package:newproject/screens/cart/cart.dart';
import 'package:newproject/screens/firstscreen/firstscreen.dart';
import 'package:newproject/screens/login/login.dart';
import 'package:newproject/screens/products/products.dart';
import 'package:newproject/screens/sample/sample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:  Product()
    );
  }
}


