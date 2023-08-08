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

      body: Obx(
        () => Padding(
          padding: const EdgeInsets.all(20.0),
          child: userController.isLoading.value == false
              ? ListView.builder(
                  itemCount:
                      userController.allcourses.value.data!.courses!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Text(
                          userController
                              .allcourses.value.data!.courses![index].title
                              .toString(),
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        userController.allcourses.value.data!.topCourse!
                                .contains(userController
                                    .allcourses.value.data!.courses![index].id)
                            ? Text(
                                "Best seller",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.green,
                                ),
                              )
                            : Text(
                                "not best",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.red,
                                ),
                              ),
                      ],
                    );
                  },
                )
              : CircularProgressIndicator(),
        ),
      ),

      // body: Obx(
      //   () => Padding(
      //     padding: const EdgeInsets.all(20.0),
      //     child: userController.isLoading.value == false
      //         ? ListView.builder(
      //             itemCount:
      //                 userController.allcourses.value.data!.topCourse!.length,
      //             itemBuilder: (context, index) {
      //               return Text(
      //                 userController.allcourses.value.data!.topCourse![index]
      //                     .toString(),
      //               );
      //             },
      //           )
      //         : CircularProgressIndicator(),
      //   ),
      // ),
    );
  }
}
