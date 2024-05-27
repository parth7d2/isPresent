import 'package:flutter/material.dart';

import 'dart:ui';

import 'package:now_won/user_interface/custom_colors.dart';

class FrostedGlassBox extends StatelessWidget {
  const FrostedGlassBox(
      {super.key,
      required this.theWidth,
      required this.theHeight,
      this.theColor = Colors.white,
      this.theCorner = 28.0,
      this.theBlur = 20.0,
      this.theBrightness = 0.1,
      this.theOpacity = 0.6,
      this.theBorderOpacity = 0.7,
      required this.theChild});

  final theWidth;
  final theHeight;

  final Color theColor;

  final theCorner;
  final theBlur;
  final theBrightness;

  final theOpacity;

  final theBorderOpacity;
  final theChild;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(theCorner),
      child: Container(
        width: theWidth,
        height: theHeight,
        color: Colors.transparent,
        child: Stack(
          children: [
            //blur effect
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: theBlur,
                sigmaY: theBlur,
              ),
              child: Opacity(
                opacity: 1.0,
                child: Container(
                  color: theColor.withOpacity(theBrightness),
                ),
              ),
            ),
            //gradient effect
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(theCorner),
                border:
                    Border.all(color: CustomColors.surface_.withOpacity(theBorderOpacity)),
                color: theColor.withOpacity(theOpacity),
                // gradient: LinearGradient(
                //     begin: Alignment.topLeft,
                //     end: Alignment.bottomRight,
                //     colors: [
                //       Colors.white.withOpacity(0.15),
                //       Colors.white.withOpacity(0.05),
                //     ]),
              ),
            ),
            //child
            Center(
              child: theChild,
            )
          ],
        ),
      ),
    );
  }
}
