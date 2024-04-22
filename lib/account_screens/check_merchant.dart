import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:now_won/major_screens/splash_screen.dart';
import 'package:now_won/navigation_screens/home_screen.dart';

class CheckMerchant extends StatefulWidget{

  const CheckMerchant({super.key});
  @override
  State<CheckMerchant> createState() => _checkMerchantState();
}

class _checkMerchantState extends State<CheckMerchant>{
  @override
  Widget build(BuildContext context) {
    return checkUser();
  }

  checkUser(){
    final user = FirebaseAuth.instance.currentUser;
    if(user != null){
      return const HomeScreen();
    }else{
      return const SplashScreen();
    }
  }


}