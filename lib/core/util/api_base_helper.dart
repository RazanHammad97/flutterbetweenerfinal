import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../app_api_endpoints.dart';
import 'app_exception.dart';

// endpoint should contains here  a back slash

class ApiBaseHelper {
  AppApiEndpoints endpoints = AppApiEndpoints();
  Future<dynamic> get(String endpoint, {Map<String, String>? header}) async {
    var responseJson;
    try {
      final response = await http.get(Uri.parse(endpoints.base_url + endpoint),
          headers: header);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> post(String endpoint, Map<String, String> body,
      {Map<String, String>? header}) async {
    var responseJson;
    try {
      final response = await http.post(Uri.parse(endpoints.base_url + endpoint),
          headers: header, body: body);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> delete(String endpoint,
      {Map<String, String>? header}) async {
    var responseJson;
    try {
      final response = await http.delete(Uri.parse(endpoints.base_url + endpoint),
          headers: header,);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> put(String endpoint,Map<String,String> body,
      {Map<String, String>? header}) async {
    var responseJson;
    try {
      final response = await http.put(Uri.parse(endpoints.base_url + endpoint),
        headers: header,body: body);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }


  dynamic _returnResponse(http.Response response){
  switch(response.statusCode){
    case 200:
    case 201:
      var responseJson = json.decode(response.body.toString());
      print(responseJson);
      return responseJson;
    case 400:
      throw BadRequestException(response.body.toString());
    case 401:
    case 403:
      throw UnauthorisedException(response.body.toString());
    case 500:
    default:
      throw FetchDataException(
          'Error occurred while Communication with Server with StatusCode : ${response.statusCode}');
  }
}

}
