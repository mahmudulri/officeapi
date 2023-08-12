import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:lmsapi/bundle/bundlenetwork.dart';
import 'bundlemodel.dart';

class BundleController extends GetxController {
  @override
  void onInit() {
    fetchAllbundles();
    super.onInit();
  }

  var isLoading = true.obs;

  var allbundles = BundleModel().obs;

  void fetchAllbundles() async {
    try {
      isLoading(true);
      var mybundles = await BundleApi.fetchbundle().then((value) {
        allbundles.value = value;
        print(allbundles);
      });

      isLoading(false);
      // if (allcourse != null) {
      //   allcourses = allcourses;

      //   isLoading(false);
      // }
    } catch (e) {
      // isLoading(false);
    }
  }
}
