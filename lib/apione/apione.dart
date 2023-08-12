import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'apione_controller.dart';

class ApiOneView extends StatelessWidget {
  ApiOneView({super.key});

  final CelebrityController userController = Get.put(CelebrityController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // body:   ListView.builder(
            //   itemCount: userController.celebrityData.value.data!.celebrity.length,
            //   itemBuilder: (context, index) {
            //     return Text("data");
            //   },
            // ),
            ));
  }
}
