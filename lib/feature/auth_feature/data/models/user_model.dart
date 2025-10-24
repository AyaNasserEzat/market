
class UserData {
  final int id;
  final String name;
  final String mobile;
  final String? email;
  final int roleId;
  final String? address;
  final String? profilePhotoPath;
  final String token;
  final String profilePhotoUrl;

  UserData({
    required this.id,
    required this.name,
    required this.mobile,
    this.email,
    required this.roleId,
    this.address,
    this.profilePhotoPath,
    required this.token,
    required this.profilePhotoUrl,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      mobile: json['mobile'] ?? '',
      email: json['email'],
      roleId: json['role_id'] ?? 0,
      address: json['address'],
      profilePhotoPath: json['profile_photo_path'],
      token: json['token'] ?? '',
      profilePhotoUrl: json['profile_photo_url'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'mobile': mobile,
      'email': email,
      'role_id': roleId,
      'address': address,
      'profile_photo_path': profilePhotoPath,
      'token': token,
      'profile_photo_url': profilePhotoUrl,
    };
  }
}
