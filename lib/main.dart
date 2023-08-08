import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lmsapi/courses/apione/apione.dart';
import 'package:lmsapi/courses/course_view.dart';
import 'package:lmsapi/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ApiOneView(),
    );
  }
}
