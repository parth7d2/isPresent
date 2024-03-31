import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:now_won/user_interface/custom_colors.dart';
import 'package:now_won/user_interface/ui_helper.dart';
import 'package:now_won/user_interface/font_util.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
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
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(left: 16.0, right: 16.0),
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40.0,
                ),
                Container(
                    width: double.infinity,
                    height: 170,
                    child: Stack(children: [
                      Positioned(
                          top: 0.0,
                          left: 16.0,
                          child: Text("Let's Add", style: LargeTitel())),
                      Positioned(
                          top:50.0,
                          left: 16.0,
                          child: Text("Shop", style: LargeTitel())),
                      Positioned(
                          bottom: 0.0,
                          left: 16.0,
                          child: Text("Add new branch", style: Subhead())),
                      Positioned(
                        top: 0.0,
                        right: 16.0,
                        child: InkWell(
                            onTap: () {
                              // showPickBox();
                            },
                            child: CircleAvatar(
                                backgroundColor: CustomColors.surfaceContainerHigh_,
                                radius: 57,
                                child: Icon(
                                  Icons.add_business_rounded,
                                   size: 48,
                                   color: CustomColors.primary_,
                                   // Optional: Set a color for the SVG
                                  // width: 39.53, // Adjust width to fit within CircleAvatar
                                  // height: 42, // Adjust height to fit within CircleAvatar
                                )
                            )),
                      ),
                      Positioned(
                        right: 22.0,
                        bottom: 60.0,
                        child: SvgPicture.asset(
                          'assets/images/plus_circle_fill.svg', // Path to your SVG file
                          width: 33.0, // Set desired width
                          height: 33.0, // Set desired height
                        ),
                      ),
                      Positioned(
                        right: 130.0,
                        bottom: 5.0,
                        child: SvgPicture.asset(
                          'assets/images/break_leaf.svg', // Path to your SVG file
                          width: 39.31, // Set desired width
                          height: 42.0, // Set desired height
                        ),
                      ),
                    ])),
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.end,
                //   children: [
                //     Text(
                //       "Create your new account",
                //       style: Subhead(),
                //     ),
                //     const SizedBox(
                //       width: 6,
                //     ),
                //     SvgPicture.asset(
                //       'assets/images/one_leaf.svg',
                //       width: 38.17, // Set desired width
                //       height: 42.0, // Set desired height
                //     ),
                //   ],
                // ),
                const SizedBox(
                  height: 20.0,
                ),
                UiHelper.textfield(email, focusNode1, "Shop Name",
                    Icons.store_mall_directory_rounded, false),
                Text("Enter the co-ordinates", style: CaptionBold(),),
                Container(
                  width: double.infinity,
                  height: 2,
                  color: CustomColors.surfaceContainerHighest_,
                ),
                UiHelper.textfield(
                    email, focusNode2, "Latitude", Icons.north_rounded, false),
                UiHelper.textfield(
                    email, focusNode3, "Lognitute", Icons.east_rounded, false),
                Text("Contact information", style: CaptionBold(),),
                Container(
                  width: double.infinity,
                  height: 2,
                  color: CustomColors.surfaceContainerHighest_,
                ),
                UiHelper.textfield(
                    email, focusNode4, "Phone No.", Icons.phone_rounded, false),
                UiHelper.textfield(
                    password, focusNode5, "Website", Icons.launch_rounded, false),
                Text("Add Product", style: CaptionBold(),),
                Container(
                  width: double.infinity,
                  height: 2,
                  color: CustomColors.surfaceContainerHighest_,
                ),
                Text("Add members", style: CaptionBold(),),
                Container(
                  width: double.infinity,
                  height: 2,
                  color: CustomColors.surfaceContainerHighest_,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    UiHelper.text_button(() {}, "Discard", 16),
                    Text(
                      "or",
                      style: Caption(size: 16),
                    ),
                    UiHelper.text_button(() {}, "Save Draft", 16),
                  ],
                ),
                UiHelper.custom_Button(() {}, "Save"),
              ],
            )),
      ),
    );
  }
}
