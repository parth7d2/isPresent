import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:now_won/major_screens/splash_screen.dart';
import 'package:now_won/user_interface/ui_helper.dart';

class ManageAccountScreen extends StatefulWidget{

  const ManageAccountScreen({super.key});
  @override
  State<ManageAccountScreen> createState() => _ManageAccountScreenState();

}

class _ManageAccountScreenState extends State<ManageAccountScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: UiHelper.custom_Button(() {
          FirebaseAuth.instance.signOut().then((value) => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> const SplashScreen()), (route)=>false,));
        }, 'Log out'),
      ),
    );
  }
}