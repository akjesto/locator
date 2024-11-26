


import 'dart:convert';
import 'dart:developer';
import 'package:tcs_locator/features/locations/model/location_model.dart';
import 'package:http/http.dart' as http;


class LocationRepo {
  static Future<ApiResponse> fetchLocations() async {
    try {
     final response = await http.get(Uri.parse('https://www.tcs.com/content/dam/global-tcs/en/worldwide-json/worldwide-map-5-12.json'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return ApiResponse.fromJson(data);
    } else {
      throw Exception('Failed to load data');
    }
    } catch (e) {
      print('errorrrrrrrr $e');
      log(e.toString());
        throw Exception('Failed to load data');
      
    }
  }
}