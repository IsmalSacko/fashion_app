import 'dart:convert';

List<Products> productsFromJson(String str) =>
    List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
  final int id;
  final String title;
  final String description;
  final String price;
  final double priceInFcfa;
  final String zoneCity;
  final List<String> types;
  final List<String> sizes;
  final int zone;
  final String zoneName;
  final bool available;
  final List<String> image;
  final double ratings; // Nouveau champ ajouté pour les évaluations

  Products({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.priceInFcfa,
    required this.zoneCity,
    required this.types,
    required this.sizes,
    required this.zone,
    required this.zoneName,
    required this.available,
    required this.image,
    required this.ratings, // Champ requis
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        priceInFcfa: json["price_in_fcfa"]?.toDouble(),
        zoneCity: json["zone_city"],
        types: List<String>.from(json["colors"].map((x) => x)),
        sizes: List<String>.from(json["sizes"]?.map((x) => x) ?? []),
        zone: json["zone"],
        zoneName: json["zone_name"],
        available: json["available"],
        image: json["image"],
        ratings:
            json["ratings"]?.toDouble() ?? 0.0, // Gérer la valeur par défaut
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "price": price,
        "price_in_fcfa": priceInFcfa,
        "zone_city": zoneCity,
        "colors": List<dynamic>.from(types.map((x) => x)),
        "sizes": List<dynamic>.from(sizes.map((x) => x)),
        "zone": zone,
        "zone_name": zoneName,
        "available": available,
        "image": List<dynamic>.from(image.map((x) => x)),
        "ratings": ratings, // Inclure les évaluations dans la sérialisation
      };
}
