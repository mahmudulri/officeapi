import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lmsapi/courses/courses_model.dart';

class UserApi {
  static Future<CoursesModel> fetchCourses() async {
    final url = Uri.parse('https://stg-lms.zainikthemes.com/api/home/courses');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      var coursesModel = CoursesModel.fromJson(json.decode(response.body));
      print(coursesModel);

      // print(response.body.toString());

      return coursesModel;
    } else {
      throw Exception('Failed to fetch courses');
    }
  }
}









// class UserApi {
//   static var client = http.Client();

//   static Future<List<CoursesModel>?> fetchAllusers() async {
//     var response = await client
//         .get(Uri.parse("https://stg-lms.zainikthemes.com/api/home/courses"));

//     if (response.statusCode == 200) {
//       var userjsondata = jsonDecode(response.body)["data"]["courses"];

//       print(userjsondata);

//       return userjsondata
//           .map((courseJson) => CoursesModel.fromJson(courseJson))
//           .toList();

//       // return userjsondata
//       //     .map((courseJson) => CoursesModel.fromJson(courseJson))
//       //     .toList();

//       // return coursesModelFromJson(userjsondata);
//     }
//     return null;
//   }
// }
