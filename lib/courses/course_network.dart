import 'dart:convert';
import 'package:http/http.dart' as http;

import 'courses_model.dart';

Future<List<Course>> fetchCourses() async {
  final url = Uri.parse('https://stg-lms.zainikthemes.com/api/home/courses');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final coursesModel = CoursesModel.fromJson(json.decode(response.body));
    return coursesModel.data.courses;
  } else {
    throw Exception('Failed to fetch courses');
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
