import 'package:dio/dio.dart';
import 'package:flutter_app/models/message.dart';

Dio _dio = Dio();

class ApiRequests {
  static Future loadMessageList() async {
    final response = await _dio.get("http://172.25.160.1:3000/entidades");
    List collection = response.data;
    List<Message> _messages =
        collection.map((json) => Message.fromJson(json)).toList();
    return _messages;
  }
}
