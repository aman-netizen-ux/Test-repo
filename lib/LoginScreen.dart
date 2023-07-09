import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_project/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'PasswordScreen.dart';
import 'elevation.dart';
import 'fontSize.dart';
import 'radius.dart';
import 'signUpWithGoogleButton.dart';
import 'spaces.dart';

class LoginScreenUsingMail extends StatefulWidget {
  const LoginScreenUsingMail({Key? key}) : super(key: key);

  @override
  State<LoginScreenUsingMail> createState() => _LoginScreenUsingMailState();
}

class _LoginScreenUsingMailState extends State<LoginScreenUsingMail> {
  TextEditingController emailController = TextEditingController();

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
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text("Welcome",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            color: black,
                          )),
                    ),
                    Center(
                      child: Text("efficiency at your Finger Tips",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            color: black,
                          )),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Image(
                        height: MediaQuery.of(context).size.height * 0.35,
                        width: MediaQuery.of(context).size.width,
                        image: AssetImage("asset/images/LoginImage.png"),
                      ),
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
                            "Log in or sign up",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: size_7,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
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

                    //Email address field
                    Padding(
                      padding: EdgeInsets.only(
                          left: space_6, right: space_6, top: space_3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: space_1),
                            child: Text(
                              "Email Address",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Roboto",
                                  fontSize: size_7,
                                  color: black),
                            ),
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: "joshua07@gmail.com",
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 192, 192, 192)),
                                  borderRadius:
                                      BorderRadius.circular(radius_2)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 192, 192, 192)),
                                  borderRadius:
                                      BorderRadius.circular(radius_2)),
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 160, 160, 160),
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                                fontSize: size_7,
                              ),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: size_7,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //const SizedBox(height: 25),
                    Padding(
                      padding: EdgeInsets.only(
                        left: space_7,
                        right: space_7,
                        top: MediaQuery.of(context).size.height * 0.046,
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PasswordScreen(
                                  emailController: emailController,
                                ),
                              ),
                            );
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

                    // SizedBox(
                    //   height: space_8,
                    // ),
                    Container(
                      margin: EdgeInsets.only(
                        left: space_4,
                        right: space_4,
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.10,
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
                            height: 1,
                            color: widgetBackGroundColor,
                          )),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: space_6,
                          right: space_6,
                          bottom: space_2,
                          top: MediaQuery.of(context).size.height * 0.009),
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
                    const SizedBox(height: 10),
                    const Center(
                      child: Text('create new account?',
                          style: TextStyle(
                              color: Color.fromARGB(255, 33, 67, 172),
                              fontSize: 20,
                              fontWeight: FontWeight.w600)),
                    ),
                    // const SizedBox(height: 20),
                    // Align(
                    //   alignment: Alignment.center,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     children: const [
                    //       Image(
                    //         image: AssetImage("asset/images/logoPasswordScreen.png"),
                    //       ),
                    //       SizedBox(width: 7),
                    //       Text(
                    //         'Liveasy',
                    //         style: TextStyle(
                    //           fontSize: 24,
                    //           fontWeight: FontWeight.w400,
                    //           fontFamily: "Roboto",
                    //           color: Color.fromARGB(255, 21, 41, 104),
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                  ],
                ))));
  }
}
