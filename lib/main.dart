import 'package:client_project/SignIn.dart';
import 'package:client_project/SignUp.dart';
import 'package:client_project/UserDashboardView.dart';
import 'package:client_project/exam.dart';
import 'package:client_project/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.amber,
      ),
      home: const Exam(),
    );
  }

}
