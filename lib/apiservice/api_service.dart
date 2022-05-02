import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:register_and_login_api/model/jobpostrequest_model.dart';
import 'package:register_and_login_api/model/jobpostresponse_model.dart';
import '../constant/config.dart';
import '../model/login_request_model.dart';
import '../model/login_response_model.dart';
import '../model/register_request_model.dart';
import '../model/register_response_model.dart';
import 'shared_service.dart';

class APIService {
  static var client = http.Client();

  //login

  static Future<bool> login(
    LoginRequestModel model,
  ) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var url = Uri.http(
      Config.apiURL,
      Config.loginAPI,
    );

    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );

    if (response.statusCode == 200) {
      await SharedService.setLoginDetails(
        loginResponseJson(
          response.body,
        ),
      );

      return true;
    } else {
      return false;
    }
  }

  //register

  static Future<RegisterResponseModel> register(
    RegisterRequestModel model,
  ) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var url = Uri.http(
      Config.apiURL,
      Config.registerAPI,
    );

    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );

    return registerResponseJson(
      response.body,
    );
  }

  //jobpost

  static Future<PostJobResponseModel> postjob(
    JobPostRequestModel model,
  ) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };
    var url = Uri.http(Config.apiURL, Config.PostJobs);
    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );
    print(response.body);
    return postJobResponseJson(response.body);
  }
}
