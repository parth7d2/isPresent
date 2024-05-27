
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_svg/svg.dart';
import 'package:now_won/account_screens/login_screen.dart';
import 'package:now_won/navigation_screens/home_screen.dart';
import 'package:now_won/user_interface/font_util.dart';
import 'package:now_won/user_interface/ui_helper.dart';

class SplashScreen extends StatefulWidget{

  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();

}

class _MyAppState extends State<SplashScreen> {

  bool animate = true;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    // Timer(Duration(seconds: 2),(){
    //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogInScreen()));
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FadeInDown(
                              delay:const Duration(milliseconds: 1900), animate: animate,
                              child: SvgPicture.asset(
                                'assets/images/world.svg',
                                width: 350.0, // Set desired height
                              ),
                            ),
                            FadeInDown(child: Text("Now Available", style: LargeTitel(),))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FadeInDown(delay:const Duration(milliseconds: 1600), animate: animate,
                      child: UiHelper.custom_Button(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LogInScreen()));
                      }, "Merchant", customWidth: 170.0, customHeight: 60),
                    ),
                    FadeInDown(delay:const Duration(milliseconds: 1600), animate: animate,
                      child: UiHelper.custom_Button(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
                      }, "User" ,customWidth: 170.0, customHeight: 60),
                    )
                  ],
                )

              ],
            ),
          ),
        ),
      );
  }
}

class Square extends StatelessWidget {
  const Square({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: const Color(0xff67549B),
    );
  }
}