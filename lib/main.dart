import 'package:flutter/material.dart';
import 'package:now_won/account_screens/home_screen.dart';
import 'package:now_won/account_screens/login_screen.dart';
import 'package:now_won/account_screens/signup_screen.dart';
import 'package:now_won/user_interface/theme.dart';
import 'package:now_won/user_interface/custom_colors.dart';

import 'account_screens/profile_screen.dart';
import 'account_screens/shop_screens.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: MaterialTheme(TextTheme()).light(),
      theme: ThemeData(
        primaryColor: CustomColors.onPrimary_,
        colorScheme: ColorScheme.light(
          primary: CustomColors.primary_,
          secondary: CustomColors.secondary_,
        ),
      ),
      home: const ShopScreen(),
    );
  }
}
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFFEBEFE9),
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
