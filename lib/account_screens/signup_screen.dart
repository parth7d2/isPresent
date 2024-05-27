import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:now_won/account_screens/login_screen.dart';
import 'package:now_won/account_screens/shop_screens.dart';
import 'package:now_won/user_interface/custom_colors.dart';
import 'package:now_won/user_interface/ui_helper.dart';
import 'package:now_won/user_interface/font_util.dart';
import 'package:image_picker/image_picker.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // final FocusNode focusNode1 = FocusNode();
  // final TextEditingController shop_name = TextEditingController();

  final FocusNode focusNode2 = FocusNode();
  final TextEditingController merchant_name = TextEditingController();

  final FocusNode focusNode3 = FocusNode();
  final TextEditingController email = TextEditingController();

  final FocusNode focusNode4 = FocusNode();
  final TextEditingController mob_no = TextEditingController();

  final FocusNode focusNode5 = FocusNode();
  final TextEditingController password = TextEditingController();

  final FocusNode focusNode6 = FocusNode();
  final TextEditingController conf_password = TextEditingController();


  File? pickedImage;
  showPickBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            title: const Text("Pick Image From"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  onTap: () {
                    pickImage(ImageSource.camera);
                    Navigator.of(context).pop();
                  },
                  leading: const Icon(Icons.camera_alt_outlined),
                  title: const Text("Camera"),
                ),
                ListTile(
                  onTap: () {
                    pickImage(ImageSource.gallery);
                    Navigator.of(context).pop();
                  },
                  leading: const Icon(Icons.image_outlined),
                  title: const Text("Gallery"),
                )
              ],
            ),
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40.0,
            ),
            SizedBox(
                width: double.infinity,
                height: 170,
                child: Stack(children: [
                  Positioned(
                      top: 0.0,
                      left: 16.0,
                      child: Text("Welcome", style: LargeTitel())),
                  Positioned(
                    top:50.0,
                      left: 16.0,
                      child: Text("Sir,", style: LargeTitel())),
                  Positioned(
                    bottom: 0.0,
                      left: 16.0,
                      child: Text("Create new account", style: Subhead())),
                  Positioned(
                    top: 0.0,
                    right: 16.0,
                    child: InkWell(
                        onTap: () {
                          showPickBox();
                        },
                        child: pickedImage != null
                        ? CircleAvatar(
                          backgroundColor: CustomColors.background_,
                          radius: 57,
                          backgroundImage: FileImage(File(pickedImage!.path)),
                        )
                        : const CircleAvatar(
                          backgroundColor: CustomColors.surfaceContainerHigh_,
                          radius: 57,
                          child: Icon(Icons.store_mall_directory, size: 42,color: CustomColors.primary_,)
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
                    right: 85.0,
                    bottom: 5.0,
                    child: SvgPicture.asset(
                      'assets/images/three_leaf.svg', // Path to your SVG file
                      width: 33.0, // Set desired width
                      height: 42.0, // Set desired height
                    ),
                  ),
                ])),

            const SizedBox(
              height: 40.0,
            ),
            UiHelper.textfield(
                merchant_name, focusNode2, "Merchant Name", Icons.person, false),
            UiHelper.textfield(
                mob_no, focusNode4, "Mob. No.", Icons.phone, false),
            UiHelper.textfield(
                email, focusNode3, "Email", Icons.email, false),
            UiHelper.textfield(
                password, focusNode5, "Password", Icons.lock, false),
            UiHelper.textfield(conf_password, focusNode6, "Conform Password",
                Icons.lock, false),

            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Have an account?",
                  style: smallText(size: 16),
                ),
                UiHelper.text_button(context,() {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const LogInScreen()), (route)=>false,);
                }, "Login", 16)
              ],
            ),
            UiHelper.custom_Button(() {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ShopScreen(pickedImage : pickedImage,merchantName: merchant_name.text.toString(), mobileNo: mob_no.text.toString(), email: email.text.toString(), password: password.text.toString()) ));
            }, "Next Page"),
          ],
        )),
      ),
    );
  }

  pickImage(ImageSource imageSource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageSource);
      if (photo == null) {
        return;
      }
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });
    } catch (ex) {
      UiHelper.customAlertBox(context, ex.toString());
    }
  }


}
