import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:now_won/user_interface/ui_helper.dart';
import 'package:now_won/user_interface/font_util.dart';
import 'package:now_won/user_interface/theme.dart';
import 'package:now_won/user_interface/custom_colors.dart';


class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

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
                  height: 70,
                ),
                Text("Welcome", style:  LargeTitel() ),
                Text("Back", style:  LargeTitel() ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Login to your account", style: Subhead(),),
                    const SizedBox(
                      width: 6,
                    ),
                    SvgPicture.asset(
                      'assets/images/one_leaf.svg',
                      width: 38.17, // Set desired width
                      height: 42.0, // Set desired height
                    ),
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                UiHelper.textfield(email, focusNode1, "Email", Icons.email_rounded, false),
                UiHelper.textfield(password, focusNode2, "Password", Icons.lock_rounded, false),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UiHelper.text_button(() {
                      return UiHelper.write_Dialog(context, "Enter email and click '0k' after that check EmailBox", "Enter you email");
                    }, "Forgot Password?", 15)
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Don't have an account?", style: Caption(size: 16),),
                    UiHelper.text_button(() { }, "SignUP", 16)
                  ],
                ),
                UiHelper.custom_Button(() { }, "Login"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Privacy & Legal | Call: +1 9876543210", style: Caption(size: 15),),
                    // UiHelper.text_button(() { }, "Contact", 13)
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
