import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'catcontroller.dart';

class CategoryView extends StatelessWidget {
  CategoryView({super.key});

  final CatController catController = Get.put(CatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("category view"),
      ),
      body: Obx(() => catController.isLoading.value == false
          ? ListView.builder(
              itemCount: catController.allcatlist.value.data!.categories.length,
              itemBuilder: (context, index) {
                return Text(catController.allcatlist.value.data!
                    .categories[index].courses[index].title
                    .toString());
              },
            )
          : CircularProgressIndicator()),
    );
  }
}
