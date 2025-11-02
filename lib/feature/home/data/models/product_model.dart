import 'package:pure_soft/feature/home/data/models/sub_unit.dart';

class ProductModel {
  final int id;
  final String? name;
  final int? vendorId;
  final String? nameEn;
  final double? discount;
  final int? categoryId;
  final int? quantity;
  final double? price;
  final String? img;
  final String? details;
  final String? detailsEn;
  final String? unit;
  final String? unitEn;
  final String? nameCategory;
  final String? nameCategoryEn;
  final List<dynamic>? attributes;
  final double? priceAfterDiscount;
  final int? isFavorite;
  final List<dynamic>? productAttributesValues;
  final List<SubUnit>? subUnits;

  ProductModel({
    required this.id,
    this.name,
    this.vendorId,
    this.nameEn,
    this.discount,
    this.categoryId,
    this.quantity,
    this.price,
    this.img,
    this.details,
    this.detailsEn,
    this.unit,
    this.unitEn,
    this.nameCategory,
    this.nameCategoryEn,
    this.attributes,
    this.priceAfterDiscount,
    this.isFavorite,
    this.productAttributesValues,
    this.subUnits,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      vendorId: json['vendor_id'],
      nameEn: json['name_en'],
      discount: (json['discount'] as num?)?.toDouble(),
      categoryId: json['category_id'],
      quantity: json['quantity'],
      price: (json['price'] as num?)?.toDouble(),
      img: json['img'],
      details: json['details'],
      detailsEn: json['details_en'],
      unit: json['unit'],
      unitEn: json['unit_en'],
      nameCategory: json['name_category'],
      nameCategoryEn: json['name_category_en'],
      attributes: json['attributes'] ?? [],
      priceAfterDiscount: (json['price_after_discount'] as num?)?.toDouble(),
      isFavorite: json['is_favorite'],
      productAttributesValues: json['product_attributes_values'] ?? [],
      subUnits: (json['sub_units'] as List<dynamic>?)
          ?.map((e) => SubUnit.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'vendor_id': vendorId,
      'name_en': nameEn,
      'discount': discount,
      'category_id': categoryId,
      'quantity': quantity,
      'price': price,
      'img': img,
      'details': details,
      'details_en': detailsEn,
      'unit': unit,
      'unit_en': unitEn,
      'name_category': nameCategory,
      'name_category_en': nameCategoryEn,
      'attributes': attributes,
      'price_after_discount': priceAfterDiscount,
      'is_favorite': isFavorite,
      'product_attributes_values': productAttributesValues,
      'sub_units': subUnits?.map((e) => e.toJson()).toList(),
    };
  }
}
