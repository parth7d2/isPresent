import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:now_won/user_interface/custom_colors.dart';
import 'package:now_won/user_interface/ui_helper.dart';
import 'package:now_won/user_interface/font_util.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final FocusNode focusNode1 = FocusNode();
  final TextEditingController shop_name = TextEditingController();

  final FocusNode focusNode2 = FocusNode();
  final TextEditingController shopkeeper_name = TextEditingController();

  final FocusNode focusNode3 = FocusNode();
  final TextEditingController email = TextEditingController();

  final FocusNode focusNode4 = FocusNode();
  final TextEditingController mob_no = TextEditingController();

  final FocusNode focusNode5 = FocusNode();
  final TextEditingController password = TextEditingController();

  // final FocusNode focusNode6 = FocusNode();
  // final TextEditingController shopkeeper_no = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double pahodai = double.infinity;
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(left: 16.0, right: 16.0),
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16.0,
                ),
                Container(
                    width: double.infinity,
                    height: 205,
                    child: Stack(children: [
                      Positioned(
                          top: 0.0,
                          left: 16.0,
                          child: Text("Your", style: LargeTitel(size: 36))),
                      Positioned(
                          top:50.0,
                          left: 16.0,
                          child: Text("Name", style: LargeTitel(size: 36))),
                      Positioned(
                          top: 117.0,
                          child:UiHelper.custom_Button(() {}, "Add Shop"),
                      ),
                      Positioned(
                        top: 0.0,
                        right: 16.0,
                        child: InkWell(
                            onTap: () {
                              // showPickBox();
                            },
                            child: CircleAvatar(
                                backgroundColor: CustomColors.surfaceContainerHigh_,
                                radius: 50,
                                child: SvgPicture.asset(
                                  'assets/images/person.svg', // Optional: Set a color for the SVG
                                  width: 39.53, // Adjust width to fit within CircleAvatar
                                  height: 42, // Adjust height to fit within CircleAvatar
                                )
                            )),
                      ),
                      Positioned(
                        right: 25.0,
                        bottom: 70.0,
                        child: SvgPicture.asset(
                          'assets/images/two_leaf.svg', // Path to your SVG file
                          width: 33.0, // Set desired width
                          height: 42.0, // Set desired height
                        ),
                      ),
                    ])),

                Container(
                  width: double.infinity,
                  height: 600,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: CustomColors.surfaceContainerLow_
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32.0, top: 16.0, right: 32.0, bottom: 16.0, ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 56.0,
                              child: Text(
                                "Manage Now Won account",
                                style: Headline(size: 21),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 56.0,
                              child: Text(
                                "Apperance",
                                style: Headline(size: 21),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 56.0,
                              child: Text(
                                "Feedback",
                                style: Headline(size: 21),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 56.0,
                              child: Text(
                                "Shareapp",
                                style: Headline(size: 21),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 1.0,
                          child: Container(
                            color: CustomColors.outlineVariant_,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 56.0,
                              child: Text(
                                "Terms & conditions",
                                style: Headline(size: 21),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 56.0,
                              child: Text(
                                "Privacy Policy",
                                style: Headline(size: 21),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 56.0,
                              child: Text(
                                "Contact us",
                                style: Headline(size: 21),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 1.0,
                          child: Container(
                            color: CustomColors.outlineVariant_,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 56.0,
                              child: Text(
                                "Rate us on any Store  ",
                                style: Headline(size: 21),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 1.0,
                          child: Container(
                            color: CustomColors.outlineVariant_,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Do you want to log out?",
                              style: Caption(size: 16),
                            ),
                            UiHelper.text_button(() {}, "Log out", 16)
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 56.0,
                              child: Text(
                                "V4.519.10000",
                                style: Subhead(size: 21),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),

              ],
            )),
      ),
    );
  }
}
