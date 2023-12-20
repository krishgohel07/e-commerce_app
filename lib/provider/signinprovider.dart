import 'package:e_commerce_app/model/signinmodel.dart';
import 'package:flutter/material.dart';

class SigninProvider extends ChangeNotifier{
 Signin signin=Signin(isOn: false);
 void changetrue(){
   signin.isOn=true;
   notifyListeners();
 }
 void changefalse(){
   signin.isOn=false;
   notifyListeners();
 }
}