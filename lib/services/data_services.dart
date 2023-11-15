import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:travelappwithbloc/models/data_model.dart';

class DataServices {
  String baseUrl = "http://mark.bslmeiyu.com/api";

  getInfo() async {
    var apiUrl = '/getplaces';
    http.Response response = await http.get(Uri.parse(baseUrl + apiUrl));
    try {
      if (response.statusCode == 200) {
        List<dynamic> list = json.decode(response.body);
        return list.map((e) => DataModel.fromJson(e)).toList();
      } else {
        return <DataModel>[];
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return "error";
    }
  }
}
