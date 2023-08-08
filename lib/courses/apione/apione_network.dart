import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lmsapi/courses/courses_model.dart';

import 'apione_model.dart';

class ApiOne {
  static Future<ApioneModel> fetchapiOne() async {
    final url =
        Uri.parse('https://api.starwishworld.com/celebrity/id?celebrity_id=1');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // final apioneModel = ApioneModel.fromJson(json.decode(response.body));
      // final apioneModel = jsonDecode(response.body);
      final apioneModel = ApioneModel.fromJson(jsonDecode(response.body));

      print(apioneModel);
      return apioneModel;
    } else {
      throw Exception('Failed to fetch courses');
    }
  }
}
