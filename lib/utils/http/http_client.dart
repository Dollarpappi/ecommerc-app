import 'dart:convert';
import 'package:http/http.dart' as http;

class THttpHelper{
  static const String _baseUrl = 'http://your-api-base-url.com';

  //Helper method to make a get request
  static Future<Map<String, dynamic>> get(String endpoint) async{
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  //Helper method to make a Post request
  static Future<Map<String, dynamic>> post(String endpoint, dynamic data)async{
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  //Helper methode to make PuT Request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data)async{
    final response = await http.put(
      Uri.parse('$_baseUrl/$endpoint'),
       headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  //handle the HTTP response
  static Map<String, dynamic> _handleResponse(http.Response response){
    if(response.statusCode ==200){
      return json.decode(response.body);
    }else{
      throw Exception("Failed to load dat: ${response.statusCode}");
    }
  }
}