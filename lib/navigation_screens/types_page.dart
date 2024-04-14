import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:now_won/user_interface/font_util.dart';

import '../user_interface/custom_colors.dart';

class TypesPage extends StatefulWidget{
  const TypesPage({super.key});

  @override
  State<StatefulWidget> createState() => _TypesPageState();
}

class _TypesPageState extends State<TypesPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.surface_,
      body: Center(
        child: Text(
          'Types',
          style: LargeTitel(),
        ),
      ),
    );
  }

}