import 'package:pure_soft/feature/auth_feature/data/models/user_model.dart';

class RegisterResponseModel {
  final bool status;
  final String? message;
  final UserData? data;

  RegisterResponseModel({
    required this.status,
    this.message,
    this.data,
  });

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    return RegisterResponseModel(
      status: json['status'] ?? false,
      message: json['error_message_en'],
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
