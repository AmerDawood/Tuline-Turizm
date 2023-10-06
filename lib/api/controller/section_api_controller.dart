import 'package:tuline_turizm/api/api_settings.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
import 'package:tuline_turizm/models/section.dart';

class SectionApiController{

  Future<List<Section>>getSections()async{
    var url =Uri.parse(ApiSettings.SECTION);
    var response = await http.get(url);

    if(response.statusCode==200){
      var jsonResponse = jsonDecode(response.body);
      var jsonArray = jsonResponse['data']as List;
      return jsonArray.map((jsonObject) => Section.fromJson(jsonObject)).toList();
    }else if(response.statusCode==400){
      //
    }
    return [];
  }
}