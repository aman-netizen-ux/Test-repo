import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'elevation.dart';
import 'signUpWithGoogleButton.dart';
import 'spaces.dart';

import 'colors.dart';
import 'fontSize.dart';
import 'radius.dart';

//import '../../functions/shipperApis/runShipperApiPost.dart';

class PasswordScreen extends StatefulWidget {
  final TextEditingController emailController;

  PasswordScreen({super.key, required this.emailController});

  //const PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  TextEditingController passwordController = TextEditingController();
  bool isVisible = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    clearFirebaseAndSharedPreference();
  }

  void clearFirebaseAndSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('uid');
    //sidstorage.erase();
    Get.deleteAll(force: true);
    if (prefs.getBool('isGoogleLogin') == true) {
      await GoogleSignIn().disconnect();
    }
    prefs.clear();
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        //toolbarHeight: 50,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          iconSize: 35,
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
        ),
        title: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage("asset/images/logoPasswordScreen.png"),
              ),
              SizedBox(width: 7),
              Text(
                'Liveasy',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: "Roboto",
                  color: Color.fromARGB(255, 21, 41, 104),
                ),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image(
                image: AssetImage("asset/images/PasswordImage.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: space_6,
                right: space_6,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: space_1),
                    child: Text(
                      "password",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins",
                          fontSize: 20,
                          color: Color.fromARGB(255, 26, 26, 26)),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    obscureText: !isVisible,
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 192, 192, 192)),
                          borderRadius: BorderRadius.circular(radius_2)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 192, 192, 192)),
                          borderRadius: BorderRadius.circular(radius_2)),
                      // suffixIcon: IconButton(
                      //     onPressed: () {
                      //       setState(() {
                      //         isVisible = !isVisible;
                      //       });
                      //     },
                      //     icon: Icon(isVisible
                      //         ? Icons.visibility
                      //         : Icons.visibility_off)),
                      hintText: "***********",
                      //border: InputBorder,
                    ),
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w600,
                      fontSize: size_7,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28),
            Padding(
              padding: EdgeInsets.only(
                left: space_7,
                right: space_7,
              ),
              child: Container(
                height: space_11,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 21, 41, 104),
                  borderRadius: BorderRadius.circular(radius_2),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.resolveWith(
                        (states) => elevation_0),
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.black.withOpacity(0.01)),
                  ),
                  onPressed: () async {
                    //   String email = widget.emailController.text.toString();
                    //   String password = passwordController.text.toString();
                    //   if (email.isNotEmpty && email.contains('@')) {
                    //     if (password.length > 5) {
                    //       UserCredential firebaseUser =
                    //           await signIn(email, password, context);
                    //       getShipperIdFromCompanyDatabase();
                    //       ShipperModel shipperModel = await shipperApiCalls.getShipperCompanyDetailsByEmail(firebaseUser.user!.email.toString());
                    //       if(!mounted) return ;
                    //       if(shipperModel.companyName=="Na" && shipperModel.shipperName=="Na" ){ //firebaseUser.user!.displayName == null --> previous condition
                    //         Navigator.pushReplacement(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (context) =>
                    //                     const CompanyDetailsForm()));
                    //       } else {
                    //         runShipperApiPost(emailId: firebaseUser.user!.email.toString());

                    //         Navigator.pushReplacement(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (context) => NavigationScreen()));
                    //       }
                    //     } else {
                    //       Fluttertoast.showToast(
                    //           msg:
                    //               'Password must contain at least 6 characters',
                    //           fontSize: size_8,
                    //           backgroundColor: Colors.white,
                    //           textColor: Colors.black);
                    //     }
                    //   } else {
                    //     Fluttertoast.showToast(
                    //         msg: 'Invalid email',
                    //         fontSize: size_8,
                    //         backgroundColor: Colors.white,
                    //         textColor: Colors.black);
                    //   }
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: size_10,
                        color: Colors.white,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: space_8,
            ),
            Container(
              margin: EdgeInsets.only(
                left: space_4,
                right: space_4,
              ),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 1,
                    color: widgetBackGroundColor,
                  )),
                  SizedBox(
                    width: space_3,
                  ),
                  Text(
                    "Or",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: size_10,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 128, 128, 128),
                    ),
                  ),
                  SizedBox(
                    width: space_3,
                  ),
                  Expanded(
                      child: Container(
                    // width: space_26,
                    height: 1,
                    color: widgetBackGroundColor,
                  )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: space_6, right: space_6, bottom: space_2, top: space_8),
              decoration: BoxDecoration(
                color: widgetBackGroundColor,
                borderRadius: BorderRadius.circular(radius_3),
              ),
              child: SignUpWithGoogleButton(
                onPressed: () async {
                  // try {
                  //   UserCredential firebaseUser = await signInWithGoogle();
                  //   SharedPreferences prefs = await SharedPreferences.getInstance();
                  //   prefs.setString('uid', firebaseUser.user!.uid);
                  //   prefs.setBool('isGoogleLogin', true);
                  //   getShipperIdFromCompanyDatabase();
                  //   if(!mounted) return ;
                  //   ShipperModel shipperModel = await shipperApiCalls.getShipperCompanyDetailsByEmail(firebaseUser.user!.email.toString());

                  //   if(shipperModel.companyName=="Na" && shipperModel.shipperName=="Na" ){ //firebaseUser.user!.displayName == null --> previous condition
                  //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const CompanyDetailsForm()));
                  //   }
                  //   else{
                  //     runShipperApiPost(emailId: firebaseUser.user!.email.toString());
                  //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavigationScreen()));
                  //   }

                  // }on FirebaseAuthException catch (e){
                  //   alertDialog("Error", '$e', context);
                  // }
                },
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text('create new account?',
                  style: TextStyle(
                      color: Color.fromARGB(255, 33, 67, 172),
                      fontSize: 20,
                      fontWeight: FontWeight.w600)),
            )
          ],
        ),
      )),
    );
  }
}
