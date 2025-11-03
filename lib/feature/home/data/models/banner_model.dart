class BannerModel {
  final int id;
  final int ord;
  final String type;
  final String name;
  final String img;
  final String urlL;
  final int withId;

  BannerModel({
    required this.id,
    required this.ord,
    required this.type,
    required this.name,
    required this.img,
    required this.urlL,
    required this.withId,
  });

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
      id: json['id'] ?? 0,
      ord: json['ord'] ?? 0,
      type: json['type']?.toString() ?? '',
      name: json['name'] ?? '',
      img: json['img'] ?? '',
      urlL: json['url_l'] ?? '',
      withId: json['with_id'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'ord': ord,
      'type': type,
      'name': name,
      'img': img,
      'url_l': urlL,
      'with_id': withId,
    };
  }
}
