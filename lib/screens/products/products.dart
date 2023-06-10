import 'package:flutter/material.dart';
import 'package:newproject/screens/products/components/productsbody.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductBody(),
    );
  }
}
