import 'package:flutter/material.dart';
import 'package:newproject/screens/sample/components/samplebody.dart';

class Sample extends StatelessWidget {
   Sample({Key? key,required this.data}) : super(key: key);
 Map<String,dynamic> data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SampleBody(data: data)
    );
  }
}
