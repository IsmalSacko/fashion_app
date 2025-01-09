// To parse this JSON data, do
//
//     final categoies = categoiesFromJson(jsonString);

import 'dart:convert';

List<Categories> categoiesFromJson(String str) =>
    List<Categories>.from(json.decode(str).map((x) => Categories.fromJson(x)));

String categoiesToJson(List<Categories> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Categories {
  int id;
  String title;
  String description;
  String price;
  double priceInFcfa;
  String zoneCity;
  int zone;
  String zoneName;
  bool available;
  String image;

  Categories({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.priceInFcfa,
    required this.zoneCity,
    required this.zone,
    required this.zoneName,
    required this.available,
    required this.image,
  });

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        priceInFcfa: json["price_in_fcfa"]?.toDouble(),
        zoneCity: json["zone_city"],
        zone: json["zone"],
        zoneName: json["zone_name"],
        available: json["available"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "price": price,
        "price_in_fcfa": priceInFcfa,
        "zone_city": zoneCity,
        "zone": zone,
        "zone_name": zoneName,
        "available": available,
        "image": image,
      };
}
