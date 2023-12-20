import 'package:e_commerce_app/provider/signinprovider.dart';
import 'package:e_commerce_app/view/authentication/forgot_pass.dart';
import 'package:e_commerce_app/view/authentication/sign_in.dart';
import 'package:e_commerce_app/view/authentication/verification.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(mainapp());
}

class mainapp extends StatefulWidget {
  const mainapp({super.key});

  @override
  State<mainapp> createState() => _mainappState();
}

class _mainappState extends State<mainapp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SigninProvider(),
        )
      ],
      builder: (context, child) => MaterialApp(
        initialRoute: 'signin',
        routes: {
          'signin': (context) => Sign_in(),
          'forgot': (context) => forgot_pass(),
          'verification':(context)=>Verification()
        },
      ),
    );
  }
}
