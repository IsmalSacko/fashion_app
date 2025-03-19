import 'dart:convert';

List<Products> productsFromJson(String str) =>
    List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  final int id;
  final String title;
  final double price;
  final String description;
  final bool isFeatured;
  final String productModel;
  final String productType;
  final double rating;
  final List<String> colors;
  final List<String> sizes;
  final List<String> imageUrls;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int category;
  final int marque;

  Products({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.isFeatured,
    required this.productModel,
    required this.productType,
    required this.rating,
    required this.colors,
    required this.sizes,
    required this.imageUrls,
    required this.createdAt,
    required this.updatedAt,
    required this.category,
    required this.marque,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
        description: json["description"],
        isFeatured: json["is_featured"],
        productModel: json["productModel"],
        productType: json["product_type"],
        rating: json["rating"]?.toDouble(),
        colors: List<String>.from(json["colors"].map((x) => x)),
        sizes: List<String>.from(json["sizes"].map((x) => x)),
        imageUrls: List<String>.from(json["imageUrls"].map((x) => x)),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        category: json["category"],
        marque: json["marque"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "is_featured": isFeatured,
        "productModel": productModel,
        "product_type": productType,
        "rating": rating,
        "colors": List<dynamic>.from(colors.map((x) => x)),
        "sizes": List<dynamic>.from(sizes.map((x) => x)),
        "imageUrls": List<dynamic>.from(imageUrls.map((x) => x)),
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "category": category,
        "marque": marque,
      };
}
