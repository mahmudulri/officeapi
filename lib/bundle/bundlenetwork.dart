import 'dart:convert';
import 'package:http/http.dart' as http;

import 'bundlemodel.dart';

class BundleApi {
  static Future<BundleModel> fetchbundle() async {
    final url =
        Uri.parse('https://stg-lms.zainikthemes.com/api/home/bundle-courses');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // print(response.body);

      final bundleModel = BundleModel.fromJson(json.decode(response.body));

      print(bundleModel);

      return bundleModel;
    } else {
      throw Exception('Failed to fetch courses');
    }
  }
}
