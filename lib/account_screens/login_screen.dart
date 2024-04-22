import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:now_won/account_screens/signup_screen.dart';
import 'package:now_won/navigation_screens/home_screen.dart';
import 'package:now_won/user_interface/ui_helper.dart';
import 'package:now_won/user_interface/font_util.dart';

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

  late final TextEditingController resetEmail;


  @override
  void initState() {
    super.initState();
    resetEmail = TextEditingController();
  }

  logIn(String email, String password) async {
    if (email == "" || password == "") {
      return UiHelper.customAlertBox(context, 'Enter required field');
    } else {
      UserCredential? userCredential;
      try {
        userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password)
            .then((value) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
          return null;
        });
      } on FirebaseAuthException catch (ex) {
        return UiHelper.customAlertBox(context, ex.code.toString());
      }
    }
  }

  @override
  void dispose() {
    resetEmail.dispose();
    super.dispose();
  }

  resetPass(String email) async {
    if (email.isEmpty) {
      return UiHelper.customAlertBox(context, "Enter your valid Email");
    } else {
      try {
        await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      } on FirebaseAuthException catch (ex) {
        if (ex.code == 'user-not-found') {
          return UiHelper.customAlertBox(
              context, "The entered email is not registered.");
        } else {
          return UiHelper.customAlertBox(context, ex.code.toString());
        }
      }
    }
  }

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
            Text("Welcome", style: LargeTitel()),
            Text("Back", style: LargeTitel()),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Login to your account",
                  style: Subhead(),
                ),
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
            UiHelper.textfield(
                email, focusNode1, "Email", Icons.email_rounded, false),
            UiHelper.textfield(
                password, focusNode2, "Password", Icons.lock_rounded, false),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.text_button(context, () {
                  UiHelper.write_Dialog(context, resetEmail,
                      "Enter email and click '0k' after that check EmailBox",
                      "Enter you email");
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
                Text(
                  "Don't have an account?",
                  style: smallText(size: 16),
                ),
                UiHelper.text_button(context, () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUpScreen()));
                }, "SignUP", 16)
              ],
            ),
            UiHelper.custom_Button(() {
              logIn(email.text.toString(), password.text.toString());
            }, "Login"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Privacy & Legal | Call: +1 9876543210",
                  style: smallText(size: 15),
                ),
                // UiHelper.text_button(() { }, "Contact", 13)
              ],
            ),
          ],
        )),
      ),
    );
  }
}
