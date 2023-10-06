import 'package:tuline_turizm/api/api_settings.dart';
import 'package:tuline_turizm/models/about.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';

class AboutApiController{

  Future<About> getAboutData() async {
    var url = Uri.parse(ApiSettings.ABOUT);
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      var data = jsonResponse['data'];
      print(data);
      return About.fromJson(data);
    } else {
      throw Exception('Failed to load data');
    }
  }

}