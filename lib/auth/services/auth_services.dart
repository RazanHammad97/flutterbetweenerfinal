import 'package:projectbetweener/core/app_api_endpoints.dart';
import 'package:projectbetweener/core/util/api_base_helper.dart';

class AuthServices {
  ApiBaseHelper _helper = ApiBaseHelper();
  AppApiEndpoints endpoints = AppApiEndpoints();

  Future<dynamic> register(String name, String email, String password,String passConfirm) {
    final response = _helper.post(endpoints.register, {
      "name": name,
      "email": email,
      "password": password,
      "password_confirmation": passConfirm
    });
    print(response.toString());
    return response;
  }
}
