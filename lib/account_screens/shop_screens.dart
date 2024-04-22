import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:now_won/navigation_screens/home_screen.dart';
import 'package:now_won/user_interface/custom_colors.dart';
import 'package:now_won/user_interface/ui_helper.dart';
import 'package:now_won/user_interface/font_util.dart';

import 'login_screen.dart';

class ShopScreen extends StatefulWidget {
  final dynamic merchantName;
  final dynamic mobileNo;
  final dynamic email;
  final dynamic password;

  final File? pickedImage;
  const ShopScreen({super.key,this.pickedImage, required this.merchantName, required this.mobileNo, required this.email, required this.password});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {

  final FocusNode focusNode1 = FocusNode();
  final TextEditingController shop_name = TextEditingController();

  final FocusNode focusNode2 = FocusNode();
  final TextEditingController latitude = TextEditingController();

  final FocusNode focusNode3 = FocusNode();
  final TextEditingController longitute = TextEditingController();

  final FocusNode focusNode4 = FocusNode();
  final TextEditingController phone_no = TextEditingController();

  final FocusNode focusNode5 = FocusNode();
  final TextEditingController website = TextEditingController();

  final bool status = false;

  late String userId;




  // final FocusNode focusNode6 = FocusNode();
  // final TextEditingController shopkeeper_no = TextEditingController();
  signUp(String email, String password) async {
    if ((email == "" || password == "")) {
      UiHelper.customAlertBox(context, "Enter Required Fields");
    }
    // else if (conPassword.toString() != password.toString()) {
    //   UiHelper.customAlertBox(context, "Your Confirm Password Not Same");
    // }
    else {
      UserCredential? usercredential;
      try {
        usercredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) {
          userId = FirebaseAuth.instance.currentUser!.uid;
          pushData(widget.merchantName, widget.email, widget.mobileNo, widget.password, shop_name.text.toString(), latitude.text.toString(), longitute.text.toString(), phone_no.text.toString(), status);
          uploadData(widget.pickedImage, widget.email).then((_) {
            // This block executes after fetchData() completes successfully
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Your Shop is Live'),
                backgroundColor: CustomColors.inverseSurface_,
              ),
            );
            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),(route)=>false);
          });
          return null;
        });
      } on FirebaseAuthException catch (ex) {
        return UiHelper.customAlertBox(context, ex.code.toString());
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
                  height: 10.0,
                ),
                Text("Let's Add Shop", style: LargeTitel()),
                UiHelper.textfield(shop_name, focusNode1, "Shop Name",
                    Icons.store_mall_directory_rounded, false),
                Text("Enter the Location / Co-ordinates", style: smallTextBold(),),
                Container(
                  width: double.infinity,
                  height: 2,
                  color: CustomColors.surfaceContainerHighest_,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  color: CustomColors.surface_,
                ),
                Center(
                  child: Text(
                    "or",
                    style: smallTextBold(size: 20),
                  ),
                ),
                UiHelper.textfield(
                    latitude, focusNode2, "Latitude", Icons.north_rounded, false),
                UiHelper.textfield(
                    longitute, focusNode3, "Longitute", Icons.east_rounded, false),
                Text("Contact information", style: smallTextBold(),),
                Container(
                  width: double.infinity,
                  height: 2,
                  color: CustomColors.surfaceContainerHighest_,
                ),
                UiHelper.textfield(
                    phone_no, focusNode4, "Phone No.", Icons.phone_rounded, false),
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
                  signUp(widget.email, widget.password);
                }, "Ready to Live"),
              ],
            )),
      ),
    );
  }

  pushData(String merchantName, String email, String mobNo, String password, String shopName, String Latitude, String Longitude, String phoneNo, bool status)async{
    if(merchantName =="" && shopName == "" && Latitude=="" && Longitude==""){
      UiHelper.customAlertBox(context, "Enter Required Field");
    }else{
      FirebaseFirestore.instance.collection("Merchants").doc(userId.toString()).set({
        "MerchantName":merchantName,
        "MobNo" : mobNo,
        "Email" : email,
        "ShopName" : shopName,
        "Latitude" : Latitude,
        "Longitude" : Longitude,
        "Status" : status,
      }).then((value) {
        log("Data Inserted");
      });
    }
  }

  uploadData(File? pickedImage, String email) async {
    UploadTask uploadTask = FirebaseStorage.instance
        .ref("Business Pics")
        .child(email)
        .putFile(pickedImage!);
    TaskSnapshot taskSnapshot = await uploadTask;
    String url = await taskSnapshot.ref.getDownloadURL();
    FirebaseFirestore.instance
        .collection("Merchants")
        .doc(userId.toString())
        .update({"Image": url}).then(
            (value) {
          log("User Uploaded");
        });
  }

}
