import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:tuline_turizm/api/api_settings.dart';
import 'package:tuline_turizm/models/privacy.dart';

class PrivacyAPIController{


  Future<Privacy> getPrivacy() async {
    var url = Uri.parse(ApiSettings.PRIVACY);
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      var data = jsonResponse['data'];
      print(data);
      return Privacy.fromJson(data);
    } else {
      throw Exception('Failed to load privacy data');
    }
  }

}