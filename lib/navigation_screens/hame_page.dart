import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:now_won/user_interface/font_util.dart';
import 'package:now_won/user_interface/ui_helper.dart';

import '../user_interface/custom_colors.dart';
class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  late AnimationController controller;
  bool openSetting = false;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  TextEditingController searchController = new TextEditingController();
  final FocusNode searchFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: CustomColors.surface_,
      // drawer: const NavigationDrawerr(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              width: double.infinity,
              height: 210,
              decoration: BoxDecoration(
                color: CustomColors.surface_
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: AnimatedIcon(
                      icon: AnimatedIcons.menu_close,
                      progress: controller,
                      color: CustomColors.primary_,
                      size: 28.0,
                    ),
                    onPressed: toggleIcon,

                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("NOW", style: LargeTitel(),),
                        InkWell(
                            onTap: () {
                              // showPickBox();
                            },
                            child: CircleAvatar(
                                backgroundColor: CustomColors.surfaceContainerHigh_,
                                radius: 28,
                              child: Icon(Icons.person_outline, size: 36.0, color: CustomColors.primary_,),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  UiHelper.textfield(searchController, searchFocus, "Search: Shop Status and Item", Icons.search_sharp, false)
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: CustomColors.onPrimary_,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(28), topRight: Radius.circular(28)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void toggleIcon() =>setState(() {
      openSetting = !openSetting;
      openSetting ? controller.forward() : controller.reverse();
    });


}