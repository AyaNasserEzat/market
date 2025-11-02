class ForgetPasswordModel {
  final bool status;
  final String? message;
  final ForgetPasswordData? data;

  ForgetPasswordModel({
    required this.status,
    this.message,
    this.data,
  });

  factory ForgetPasswordModel.fromJson(Map<String, dynamic> json) {
    return ForgetPasswordModel(
      status: json['status'] ?? false,
      message: json['message'],
      data: json['data'] != null
          ? ForgetPasswordData.fromJson(json['data'])
          : null,
    );
  }
}

class ForgetPasswordData {
  final int? id;
  final int? userTypeId;
  final int? roleId;
  final String? name;
  final String? mobile;
  final String? email;
  final String? token;
  final int? newPassword;
  final String? profilePhotoUrl;

  ForgetPasswordData({
    this.id,
    this.userTypeId,
    this.roleId,
    this.name,
    this.mobile,
    this.email,
    this.token,
    this.newPassword,
    this.profilePhotoUrl,
  });

  factory ForgetPasswordData.fromJson(Map<String, dynamic> json) {
    return ForgetPasswordData(
      id: json['id'],
      userTypeId: json['user_type_id'],
      roleId: json['role_id'],
      name: json['name'],
      mobile: json['mobile'],
      email: json['email'],
      token: json['token'],
      newPassword: json['new_password'],
      profilePhotoUrl: json['profile_photo_url'],
    );
  }
}

// class ForgetPasswordModel {
//   final bool status;
//   final String? message;
//   final ForgetPasswordData? data;

//   ForgetPasswordModel({
//     required this.status,
//     this.message,
//     this.data,
//   });

//   factory ForgetPasswordModel.fromJson(Map<String, dynamic> json) {
//     return ForgetPasswordModel(
//       status: json['status'] ?? false,
//       message: json['message'],
//       data: json['data'] != null
//           ? ForgetPasswordData.fromJson(json['data'])
//           : null,
//     );
//   }
// }

// class ForgetPasswordData {
//   final int? id;
//   final int? userTypeId;
//   final int? roleId;
//   final dynamic memberPlan;
//   final String? name;
//   final String? nameEn;
//   final String? lastName;
//   final String? userName;
//   final String? mobile;
//   final String? email;
//   final String? emailVerifiedAt;
//   final dynamic currentTeamId;
//   final String? address;
//   final String? profilePhotoPath;
//   final dynamic columnsNeedApprove;
//   final dynamic activitationCode;
//   final String? isConnect;
//   final String? lastConnectedAt;
//   final dynamic onesignalId;
//   final int? userBalance;
//   final String? userLang;
//   final int? changeUserType;
//   final String? isActive;
//   final dynamic deletedAt;
//   final String? createdAt;
//   final String? updatedAt;
//   final int? newPassword;
//   final String? token;
//   final String? profilePhotoUrl;

//   ForgetPasswordData({
//     this.id,
//     this.userTypeId,
//     this.roleId,
//     this.memberPlan,
//     this.name,
//     this.nameEn,
//     this.lastName,
//     this.userName,
//     this.mobile,
//     this.email,
//     this.emailVerifiedAt,
//     this.currentTeamId,
//     this.address,
//     this.profilePhotoPath,
//     this.columnsNeedApprove,
//     this.activitationCode,
//     this.isConnect,
//     this.lastConnectedAt,
//     this.onesignalId,
//     this.userBalance,
//     this.userLang,
//     this.changeUserType,
//     this.isActive,
//     this.deletedAt,
//     this.createdAt,
//     this.updatedAt,
//     this.newPassword,
//     this.token,
//     this.profilePhotoUrl,
//   });

//   factory ForgetPasswordData.fromJson(Map<String, dynamic> json) {
//     return ForgetPasswordData(
//       id: json['id'],
//       userTypeId: json['user_type_id'],
//       roleId: json['role_id'],
//       memberPlan: json['member_plan'],
//       name: json['name'],
//       nameEn: json['name_en'],
//       lastName: json['last_name'],
//       userName: json['user_name'],
//       mobile: json['mobile'],
//       email: json['email'],
//       emailVerifiedAt: json['email_verified_at'],
//       currentTeamId: json['current_team_id'],
//       address: json['address'],
//       profilePhotoPath: json['profile_photo_path'],
//       columnsNeedApprove: json['columns_need_approve'],
//       activitationCode: json['activitation_code'],
//       isConnect: json['is_connect'],
//       lastConnectedAt: json['last_connected_at'],
//       onesignalId: json['onesignal_id'],
//       userBalance: json['user_balance'],
//       userLang: json['user_lang'],
//       changeUserType: json['change_user_type'],
//       isActive: json['is_active'],
//       deletedAt: json['deleted_at'],
//       createdAt: json['created_at'],
//       updatedAt: json['updated_at'],
//       newPassword: json['new_password'],
//       token: json['token'],
//       profilePhotoUrl: json['profile_photo_url'],
//     );
//   }
// }
