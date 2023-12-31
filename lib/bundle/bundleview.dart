import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import 'bundlecontroller.dart';

class BundleView extends StatelessWidget {
  BundleView({super.key});

  final BundleController bundleController = Get.put(BundleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bundle Data"),
        ),
        body: Obx(
          () => bundleController.isLoading.value == false
              ? ListView.builder(
                  itemCount: bundleController.allbundles.value.data!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Text(
                          bundleController.allbundles.value.data![index].uuid
                              .toString(),
                        ),
                        bundleController
                                    .allbundles.value.data![index].instructor ==
                                null
                            ? Text(
                                bundleController.allbundles.value.data![index]
                                    .organization!.firstName
                                    .toString(),
                              )
                            : Text(
                                bundleController.allbundles.value.data![index]
                                    .instructor!.firstName
                                    .toString(),
                              ),
                      ],
                    );
                  },
                )
              : Center(child: CircularProgressIndicator()),
        ));
  }
}
