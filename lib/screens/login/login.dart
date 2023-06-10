import 'package:flutter/material.dart';
import 'package:newproject/screens/login/components/loginbody.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Login_body(),
    );
  }
}