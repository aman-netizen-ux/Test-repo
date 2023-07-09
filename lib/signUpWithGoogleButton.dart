import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart';
import 'spaces.dart';
import 'radius.dart';
import 'fontSize.dart';
import 'borderWidth.dart';
import 'elevation.dart';

class SignUpWithGoogleButton extends StatelessWidget {
  var onPressed;

  SignUpWithGoogleButton({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: space_11,
        decoration: BoxDecoration(
          color: black,
          borderRadius: BorderRadius.circular(radius_3),
          border: Border.all(
            color: black,
            width: borderWidth_10,
          ),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: elevation_0,
            backgroundColor: Colors.black.withOpacity(0.01),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: space_4,
                  width: space_4,
                  child: const Image(
                    image: AssetImage("asset/images/google_icon.png"),
                  )),
              SizedBox(
                width: space_3,
              ),
              Text(
                "Login with Google",
                style: TextStyle(
                    fontSize: size_10,
                    fontFamily: "Monsterrat",
                    fontWeight: FontWeight.bold,
                    color: white),
              ),
            ],
          ),
        ));
  }
}
