
import 'dart:convert';


import 'package:http/http.dart'as http;
import 'package:tuline_turizm/api/api_settings.dart';

import '../../models/faqs.dart';


class MostQuestionsApiController{

  Future<List<FAQs>>getFAQS()async{
    var url =Uri.parse(ApiSettings.FAQs);
    var response = await http.get(url);

    if(response.statusCode==200){
      var jsonResponse = jsonDecode(response.body);
      var jsonArray = jsonResponse['data']as List;
      return jsonArray.map((jsonObject) => FAQs.fromJson(jsonObject)).toList();
    }else if(response.statusCode==400){
      //
    }
    return [];

  }

}