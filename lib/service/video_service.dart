import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:videoplayer_task/model/test.dart';

import '../model/videomodel.dart';

class ApiService {
  static Future<Temperatures> fetchVideos() async {
    final response = await http.get(Uri.parse("https://test-ximit.mahfil.net/api/trending-video/1"));
    //print(response.body);
    if (response.statusCode == 200) {

       var jsonRes = jsonDecode(response.body);
       Temperatures obj = temperaturesFromJson(jsonEncode(jsonRes));
       print('get final response: ${obj}');
      return obj;
    } else {
      throw Exception("Failed to load videos");
    }
  }
}
// var jsonRes = jsonDecode(response);
// OrderModel obj = orderModelFromJson(jsonEncode(jsonRes["order"]));
// log('get final response: ${obj}');

// var jsonRes = jsonDecode(response);
// OrderModel obj = orderModelFromJson(jsonEncode(jsonRes["order"]));
// log('get final response: ${obj}');