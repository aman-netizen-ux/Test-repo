import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_project/radius.dart';

import 'colors.dart';
import 'elevation.dart';
import 'spaces.dart';
import 'fontSize.dart';

class CompanyDetailsForm extends StatefulWidget {
  const CompanyDetailsForm({Key? key}) : super(key: key);

  @override
  State<CompanyDetailsForm> createState() => _CompanyDetailsFormState();
}

class _CompanyDetailsFormState extends State<CompanyDetailsForm> {
  TextEditingController companyNameController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkBlueColor,
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
            color: white,
          ),
          title: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Image(
                  fit: BoxFit.fill,
                  image: AssetImage("asset/images/logoCompanyDetails.png"),
                ),
                SizedBox(width: 7),
                Text(
                  'Liveasy',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    color: white,
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                    image: AssetImage('asset/images/CompanyDetailsImage.png')),
                ClipRect(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(radius_3),
                        right: Radius.circular(radius_3),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: space_2),
                          child: const Text("Company Details",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 51, 51, 51))),
                        ),
                        const SizedBox(height: 3),
                        const Text(
                            "Enter the company details here, To\n land into homepage",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color.fromARGB(255, 189, 189, 189))),
                        const SizedBox(height: 25),
                        Padding(
                          padding:
                              EdgeInsets.only(left: space_5, right: space_5),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              SizedBox(
                                height: 46,
                                child: TextFormField(
                                  keyboardType: TextInputType.name,
                                  controller: nameController,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: space_15,
                                        vertical: space_1),
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 21, 41, 104)),
                                        borderRadius:
                                            BorderRadius.circular(radius_2)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 21, 41, 104)),
                                        borderRadius:
                                            BorderRadius.circular(radius_2)),
                                    hintText: "Name",
                                    hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 217, 217, 217),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                      fontSize: size_10,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 217, 217, 217),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                    fontSize: size_10,
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: -5,
                                top: -5,
                                child: Image(
                                    // width: 130,
                                    //alignment: Alignment.topLeft,
                                    image: AssetImage(
                                        "asset/images/UserRounded.png")),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        Padding(
                          padding:
                              EdgeInsets.only(left: space_5, right: space_5),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              SizedBox(
                                height: 46,
                                child: TextFormField(
                                  controller: phoneController,
                                  keyboardType: TextInputType.phone,
                                  textInputAction: TextInputAction.done,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: space_15,
                                        vertical: space_1),
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 21, 41, 104)),
                                        borderRadius:
                                            BorderRadius.circular(radius_2)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 21, 41, 104)),
                                        borderRadius:
                                            BorderRadius.circular(radius_2)),
                                    hintText: "PhoneNumber",
                                    hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 217, 217, 217),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                      fontSize: size_10,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 217, 217, 217),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                    fontSize: size_10,
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: -5,
                                top: -5,
                                child: Image(
                                    // width: 130,
                                    //alignment: Alignment.topLeft,
                                    image: AssetImage(
                                        "asset/images/PhoneRounded.png")),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        Padding(
                          padding:
                              EdgeInsets.only(left: space_5, right: space_5),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              SizedBox(
                                height: 46,
                                child: TextFormField(
                                  controller: nameController,
                                  keyboardType: TextInputType.none,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: space_15,
                                        vertical: space_1),
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 21, 41, 104)),
                                        borderRadius:
                                            BorderRadius.circular(radius_2)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 21, 41, 104)),
                                        borderRadius:
                                            BorderRadius.circular(radius_2)),
                                    hintText: "Company Name",
                                    hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 217, 217, 217),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                      fontSize: size_10,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 217, 217, 217),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                    fontSize: size_10,
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: -5,
                                top: -5,
                                child: Image(
                                    // width: 130,
                                    //alignment: Alignment.topLeft,
                                    image: AssetImage(
                                        "asset/images/Buildings.png")),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 50),
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
                              onPressed: () {
                                // if (companyNameController.text
                                //         .toString()
                                //         .isNotEmpty &&
                                //     nameController.text.toString().isNotEmpty) {
                                //   updateDetails();
                                // } else {
                                //   Fluttertoast.showToast(
                                //       msg: 'Enter details (Company Name and Name)',
                                //       fontSize: size_8,
                                //       backgroundColor: Colors.white,
                                //       textColor: Colors.black);
                                // }
                              },
                              child: Text(
                                "Confirm",
                                style: TextStyle(
                                    fontSize: size_10,
                                    color: Colors.white,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
  // updateDetails() async{
  //   FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  //   if(firebaseAuth.currentUser!.emailVerified){
  //     firebaseAuth.currentUser!.updateDisplayName(nameController.text.toString());
  //     //String? id = await runShipperApiPost(
  //       emailId:firebaseAuth.currentUser!.email.toString(),
  //       shipperName: nameController.text.toString(),
  //       companyName: companyNameController.text.toString(),
  //       phoneNo: phoneController.text.toString(),
  //     );
  //     if(id!=null) {
  //       log('Shipper id--->$id');
  //       if(!mounted){ log('In not mounted');return ;}
  //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavigationScreen()));
  //     }
  //   }else{
  //     alertDialog("Verify Email", "Verify your mail id to continue", context);
  //     // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginWeb()));
  //   }
  // }
}
