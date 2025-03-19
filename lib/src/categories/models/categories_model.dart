import 'dart:convert';

List<Categories> categoriesFromJson(String str) =>
    List<Categories>.from(json.decode(str).map((x) => Categories.fromJson(x)));

String categoiesToJson(List<Categories> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Categories {
  final int id;
  final String title;
  final String imageUrl;

  Categories({
    required this.id,
    required this.title,
    required this.imageUrl,
  });

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        id: json["id"],
        title: json["title"],
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image_url": imageUrl,
      };
}
