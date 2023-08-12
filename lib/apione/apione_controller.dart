import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'apione_model.dart';

// class ApiOneController extends GetxController {
//   @override
//   void onInit() {
//     fetchAllusers();
//     super.onInit();
//   }

//   var isLoading = true.obs;

//   var allcourses = ApioneModel().obs;

//   void fetchAllusers() async {
//     try {
//       isLoading(true);
//       var allcourse = await ApiOne.fetchapiOne().then((value) {
//         allcourses.value = value;
//       });

//       isLoading(false);
//       // if (allcourse != null) {
//       //   allcourses = allcourses;

//       //   isLoading(false);
//       // }
//     } catch (e) {
//       print(e.toString());
//       // isLoading(false);
//     }
//   }
// }

class CelebrityController extends GetxController {
  @override
  void onInit() {
    fetchCelebrityData();
    super.onInit();
  }

  var celebrityData = ApioneModel().obs;

  Future<void> fetchCelebrityData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://api.starwishworld.com/celebrity/id?celebrity_id=1'));

      if (response.statusCode == 200) {
        celebrityData.value = apioneModelFromJson(response.body);
        print(response.statusCode);
      } else {
        // Handle error here
      }
    } catch (e) {
      // Handle error here
      print('Exception: $e');
    }
  }
}
