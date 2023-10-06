import 'package:tuline_turizm/api/api_settings.dart';
import 'package:tuline_turizm/models/area.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';

import 'package:tuline_turizm/models/service.dart';
import 'package:tuline_turizm/perfs/user_preference_controller.dart';

class FavoriteApiController{
  Future<List<Services>>getFavorite()async{
    var url =Uri.parse(ApiSettings.MY_FAVORITE);
    var response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer ${UserPreferenceController().token}',
      },
    );
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