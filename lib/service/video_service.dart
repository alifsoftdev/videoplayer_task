import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/videomodel.dart';

class ApiService {
  static Future<VideoModel> fetchVideos() async {
    final response = await http.get(Uri.parse("https://test-ximit.mahfil.net/api/trending-video/1"));
    //print(response.body);
    if (response.statusCode == 200) {

      return videoModelFromJson(response.body);
    } else {
      throw Exception("Failed to load videos");
    }
  }
}

// var jsonRes = jsonDecode(response);
// OrderModel obj = orderModelFromJson(jsonEncode(jsonRes["order"]));
// log('get final response: ${obj}');