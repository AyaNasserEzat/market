
class SubUnit {
  final int id;
  final int productId;
  final int unitId;
  final String? subUnit;
  final String? subUnitEn;
  final int? subQuantity;
  final double? subPrice;
  final double? subDiscount;
  final String? createdAt;
  final String? updatedAt;
  final String? deletedAt;

  SubUnit({
    required this.id,
    required this.productId,
    required this.unitId,
    this.subUnit,
    this.subUnitEn,
    this.subQuantity,
    this.subPrice,
    this.subDiscount,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory SubUnit.fromJson(Map<String, dynamic> json) {
    return SubUnit(
      id: json['id'],
      productId: json['product_id'],
      unitId: json['unit_id'],
      subUnit: json['sub_unit'],
      subUnitEn: json['sub_unit_en'],
      subQuantity: json['sub_quantity'],
      subPrice: (json['sub_price'] as num?)?.toDouble(),
      subDiscount: (json['sub_discount'] as num?)?.toDouble(),
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      deletedAt: json['deleted_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'product_id': productId,
      'unit_id': unitId,
      'sub_unit': subUnit,
      'sub_unit_en': subUnitEn,
      'sub_quantity': subQuantity,
      'sub_price': subPrice,
      'sub_discount': subDiscount,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'deleted_at': deletedAt,
    };
  }
}
