import 'package:tuline_turizm/api/api_settings.dart';
import 'package:tuline_turizm/models/area.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';

import 'package:tuline_turizm/models/service.dart';

class ServiceApiController {

  Future<List<Services>>getArea()async{
    var url =Uri.parse(ApiSettings.SERVICES);
    var response = await http.get(url);

    if(response.statusCode==200){
      var jsonResponse = jsonDecode(response.body);
      var jsonArray = jsonResponse['data']as List;
      // print(jsonArray);
      return jsonArray.map((jsonObject) => Services.fromJson(jsonObject)).toList();
    }else if(response.statusCode==400){
      //
    }
    return [];
  }


}