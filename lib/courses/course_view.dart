import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'course_controller.dart';

class CourseView extends StatelessWidget {
  CourseView({super.key});

  final CourseController userController = Get.put(CourseController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [Text("data")],
        ),
      ),
    );
  }
}
