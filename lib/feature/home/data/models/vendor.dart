
class Vendor {
  int id;
  String name;
  String? nameEn;
  String img;
  int categoryId;
  int regionId;
  dynamic deliveryCharges;
  String isOpened;
  String rate;
  dynamic category;

  Vendor({
    required this.id,
    required this.name,
    this.nameEn,
    required this.img,
    required this.categoryId,
    required this.regionId,
    this.deliveryCharges,
    required this.isOpened,
    required this.rate,
    this.category,
  });

  factory Vendor.fromJson(Map<String, dynamic> json) {
    return Vendor(
      id: json['id'],
      name: json['name'],
      nameEn: json['name_en'],
      img: json['img'],
      categoryId: json['category_id'],
      regionId: json['region_id'],
      deliveryCharges: json['delivery_charges'],
      isOpened: json['is_opened'],
      rate: json['rate'],
      category: json['category'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'name_en': nameEn,
      'img': img,
      'category_id': categoryId,
      'region_id': regionId,
      'delivery_charges': deliveryCharges,
      'is_opened': isOpened,
      'rate': rate,
      'category': category,
    };
  }
}