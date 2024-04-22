import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:now_won/user_interface/custom_colors.dart';
import 'package:now_won/user_interface/font_util.dart';

class UiHelper {
  static Widget custom_Button(VoidCallback voidCallback, String text,
      {double customWidth = 350.0, double customHeight = 60.0}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: customWidth,
        height: customHeight,
        child: ElevatedButton(
            onPressed: () {
              voidCallback();
            },
            style: ElevatedButton.styleFrom(
              maximumSize: const Size(400, 60),
              backgroundColor: CustomColors.primary_,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            child: Text(
              text,
              style: Headline(tc: Colors.white, size: 22),
            )),
      ),
    );
  }

  static Widget textfield(TextEditingController controller,
      FocusNode focusNode_, String string, IconData iconData, bool toHide) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 16.0, top: 9.0, right: 16.0, bottom: 9.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(14.0)),
        child: TextField(
          controller: controller,
          obscureText: toHide,
          focusNode: focusNode_,
          cursorColor: CustomColors.primary_,
          cursorRadius: const Radius.circular(1.0),
          style: Headline(size: 18),
          decoration: InputDecoration(
              fillColor: CustomColors.surfaceContainerHigh_,
              filled: true,
              prefixIcon: Icon(iconData,
                  color: focusNode_.hasFocus
                      ? CustomColors.primary_
                      : CustomColors.onSurfaceVariant_),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              hintText: string,
              hintStyle: Headline(tc: CustomColors.neutral_variant60, size: 17),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 2.0)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide:
                    const BorderSide(color: CustomColors.primary_, width: 2.0),
              )),
        ),
      ),
    );
  }

  static customAlertBox(BuildContext context, String message) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: CustomColors.surfaceContainerHigh_,
            surfaceTintColor: CustomColors.surfaceContainerHigh_,
            title: Text(message, style: smallTextBold(tc: CustomColors.error_, size: 20.0),),
            actions: [
              text_button(context,() {
                Navigator.pop(context);
              }, "Ok", 15)
            ],
          );
        });
  }

  static Widget text_button(BuildContext context,
      VoidCallback voidCallback, String text, double fontsize) {
    return TextButton(
        onPressed: () {
          voidCallback();
        },
        style: ButtonStyle(
          overlayColor: MaterialStateColor.resolveWith(
              (states) => CustomColors.primary_.withOpacity(0.08)),
        ),
        child: Stack(children: [
          Text(
            text,
            style: smallTextBold(size: fontsize),
          ),
          Positioned(
            bottom: 0.0,
            // Place the line at the bottom
            left: 0.0,
            right: 0.0,
            height: 1.5,
            // Adjust line thickness
            child: Container(
              decoration: BoxDecoration(
                color: CustomColors.primary_, // Set your desired color
                borderRadius: BorderRadius.circular(1.0), // Add other decorations
              ), // Set your desired underline color
            ),
          ),
        ]));
  }

  static write_Dialog(BuildContext contextt,TextEditingController textEditingController, String message, String hint){
    return showDialog(context: contextt, builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: CustomColors.surfaceContainerLowest_,
        surfaceTintColor: CustomColors.surfaceContainerLowest_,
        title: Text(message, style: smallTextBold(),),
        content: TextField(
          controller: textEditingController,
          cursorColor: CustomColors.primary_,
          cursorRadius: const Radius.circular(1.0),
          style: smallTextBold(),
          onSubmitted: (_) {
            resetPass(context, textEditingController.text.toString());
            textEditingController.clear();
            Navigator.pop(context);
          },
          decoration: InputDecoration(
              fillColor: CustomColors.surfaceContainerHigh_,
              filled: true,
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              hintText: hint,
              hintStyle: smallTextBold(tc: CustomColors.neutral_variant60, size: 17),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide:
                  const BorderSide(color: Colors.transparent, width: 2.0)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide:
                const BorderSide(color: CustomColors.primary_, width: 2.0),
              )),
        ),
        actions: [
          text_button(context,()  {
            resetPass(context, textEditingController.text.toString());
            textEditingController.clear();
            Navigator.pop(context);
          }, "Ok", 15)
        ],
      );
    });
  }

  static void resetPass(BuildContext context, String email) async {
    if(email==""){
      UiHelper.customAlertBox(context, "Enter your valid Email");
    }else{
      try{
        await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      }on FirebaseAuthException catch(ex){
        if(ex.code == 'user-not-found'){
          UiHelper.customAlertBox(context, "The entered email is not registered.");
        }else {
          UiHelper.customAlertBox(context, ex.code.toString());
        }
      }
    }
  }
  // static Widget customContainer(double theWidth, double theHight, Color theColor, ){
  //   return Container(
  //
  //   )
  // }
}


