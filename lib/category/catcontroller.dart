import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:lmsapi/category/catnetwork.dart';

import 'catmodel.dart';

class CatController extends GetxController {
  @override
  void onInit() {
    fellAllCatsData();
    super.onInit();
  }

  var isLoading = false.obs;

  // var allcourselist = <Course>[].obs;

  var allcatlist = CatModel().obs;

  void fellAllCatsData() async {
    try {
      isLoading(true);
      var allcats = await CatApi.fetchAllCat().then((value) {
        allcatlist.value = value;
        // print(allcourses);
      });

      isLoading(false);
      // if (allcourse != null) {
      //   allcourses = allcourses;

      //   isLoading(false);
      // }
    } catch (e) {
      print(e.toString());
    }
  }
}
