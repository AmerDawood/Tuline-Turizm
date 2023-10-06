import 'package:tuline_turizm/api/api_settings.dart';
import 'package:tuline_turizm/models/area.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';

class AreaApiController{
  Future<List<Area>>getArea()async{
    var url =Uri.parse(ApiSettings.AREA);
    var response = await http.get(url);

    if(response.statusCode==200){
      var jsonResponse = jsonDecode(response.body);
      var jsonArray = jsonResponse['data']as List;
      // print(jsonArray);
      return jsonArray.map((jsonObject) => Area.fromJson(jsonObject)).toList();
    }else if(response.statusCode==400){
      //
    }
    return [];
  }
}