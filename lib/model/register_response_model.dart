import 'dart:convert';

RegisterResponseModel registerResponseJson(String str) =>
    RegisterResponseModel.fromJson(json.decode(str));

class RegisterResponseModel {
  RegisterResponseModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.token,
  });
 late final String id;
  late final String name;
  late final String email;
  late final int phone;
  late final String token;

  RegisterResponseModel.fromJson(Map<String, dynamic> json) {
     id = json['_id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
   _data['_id'] = id;
    _data['name'] = name;
    _data['email'] = email;
    _data['phone'] = phone;
    _data['token'] = token;
    return _data;
  }
}

