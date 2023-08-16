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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Obx(() => catController.isLoading.value == false
            ? ListView.builder(
                itemCount:
                    catController.allcatlist.value.data!.categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 400,
                    width: double.infinity,
                    color: Colors.green,
                    child: ListView.builder(
                      itemCount: catController.allcatlist.value.data!
                          .categories[index].courses!.length,
                      itemBuilder: (context, index) {
                        return Text(
                          catController.allcatlist.value.data!.categories[index]
                              .courses![index].title
                              .toString(),
                        );
                      },
                    ),
                  );
                },
              )
            : CircularProgressIndicator()),
      ),
    );
  }
}
