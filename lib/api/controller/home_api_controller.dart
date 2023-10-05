import 'package:tuline_turizm/api/api_settings.dart';
import 'package:tuline_turizm/models/home.dart';
import 'package:http/http.dart'as http;
import 'package:tuline_turizm/models/offer.dart';
import 'dart:convert';

import 'package:tuline_turizm/models/service.dart';
import 'package:tuline_turizm/models/slider.dart';

class HomeApiController{
  Future<Home?> getHomeData(areaId) async {
    try {
      var url = Uri.parse(ApiSettings.homeUrl(areaId??null));
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);
        return Home(
          services: (jsonResponse['services'] as List )
              .map((jsonObject) => Services.fromJson(jsonObject))
              .toList(),
          sliders: (jsonResponse['sliders'] as List )
              .map((jsonObject) => Sliders.fromJson(jsonObject))
              .toList(),
          offers: (jsonResponse['offers'] as List  )
              .map((jsonObject) => Offers.fromJson(jsonObject))
              .toList(),
        );


      } else if (response.statusCode == 400) {
        // Handle the 400 status code error here
        throw Exception('Bad request');
      }
    } catch (e) {
      // Handle any other exceptions that might occur during the request
      throw Exception('Failed to load home data: $e');
    }
    // If there's an error or the response is not 200, return null or handle it accordingly
    return null;
  }



}