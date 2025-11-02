import 'package:pure_soft/feature/home/data/models/vendor_data.dart';

class VendorResponse {
  bool status;
  VendorData data;

  VendorResponse({
    required this.status,
    required this.data,
  });

  factory VendorResponse.fromJson(Map<String, dynamic> json) {
    return VendorResponse(
      status: json['status'],
      data: VendorData.fromJson(json['data']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'data': data.toJson(),
    };
  }
}
