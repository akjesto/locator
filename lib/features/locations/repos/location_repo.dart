


import 'dart:convert';
import 'dart:developer';

import 'package:tcs_locator/features/locations/model/location_model.dart';
import 'package:http/http.dart' as http;


class LocationRepo {
  static Future<ApiResponse> fetchLocations() async {
  //  var client = http.Client();
   // List<LocationModel> locations = [];
    try {

//  final response = await http
//       .get(Uri.parse('https://www.tcs.com/content/dam/global-tcs/en/worldwide-json/worldwide-map-5-12.json'));


//       var jsonResponse =
//         convert.jsonDecode(response.body) as Map<String, dynamic>;

//          print("jsonResponse****** $jsonResponse");

         

     final response = await http.get(Uri.parse('https://www.tcs.com/content/dam/global-tcs/en/worldwide-json/worldwide-map-5-12.json'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return ApiResponse.fromJson(data);
    } else {
      throw Exception('Failed to load data');
    }
         



        //
        //
        // return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);





      // var response = await client
      //     .get(Uri.parse('https://www.tcs.com/content/dam/global-tcs/en/worldwide-json/worldwide-map-5-12.json'));
      
      
      
      // print("response*******: $response");



      // List result = jsonDecode(response.body);

      // for (int i = 0; i < result.length; i++) {
      //   LocationModel post =
      //       LocationModel.fromMap(result[i] as Map<String, dynamic>);
      //   locations.add(post);
      // }

      //return locations;
    } catch (e) {
      print('errorrrrrrrr $e');
      log(e.toString());
        throw Exception('Failed to load data');
      
    }
  }
}