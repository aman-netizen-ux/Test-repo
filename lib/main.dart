import 'package:flutter/material.dart';
import 'package:test_project/LoginScreen.dart';
import 'package:test_project/PasswordScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'CompanyDetailsForm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Application Password',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreenUsingMail(),
    );
  }
}
