import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:now_won/account_screens/check_merchant.dart';
import 'package:now_won/user_interface/custom_colors.dart';

import 'firebase_options.dart';




Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
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
        primaryColor: CustomColors.surface_,
        colorScheme: const ColorScheme.light(
          primary: CustomColors.primary_,
          secondary: CustomColors.secondary_,
        ),
      ),
      home: const CheckMerchant(),
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
