import 'package:pure_soft/feature/auth_feature/data/models/user_model.dart';

class LoginResponseModel {
    final bool status;
  final String? message;
  final UserData? data;

  LoginResponseModel({
    required this.status,
    this.message,
    this.data,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      status: json['status'] ?? false,
      message: json['message'],
      data: json['data'] != null ? UserData.fromJson(json['data']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      'data': data?.toJson(),
    };
  }
}