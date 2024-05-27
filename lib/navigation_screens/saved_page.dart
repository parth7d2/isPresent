import 'package:flutter/material.dart';
import 'package:now_won/user_interface/font_util.dart';

class SavedPage extends StatefulWidget{
  const SavedPage({super.key});

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Text(
          'WatchList',
          style: LargeTitel(),
        ),
      ),
    );
  }

}