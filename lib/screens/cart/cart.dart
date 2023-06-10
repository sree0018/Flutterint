import 'package:flutter/material.dart';
import 'package:newproject/screens/cart/components/cartbody.dart';
import 'package:newproject/screens/repository/repository.dart';

class Cart extends StatelessWidget {
   Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CartBody(),
    );
  }
}
