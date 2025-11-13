// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String id;
    int? userId;
    String ownerName;
    String name;
    int price;
    String category;
    double rating;
    String description;
    bool isFeatured;
    String imageUrl;

    ProductEntry({
        required this.id,
        required this.userId,
        required this.ownerName,
        required this.name,
        required this.price,
        required this.category,
        required this.rating,
        required this.description,
        required this.isFeatured,
        required this.imageUrl,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        id: json["id"],
        userId: json["user_id"],
        ownerName: json["owner_name"],
        name: json["name"],
        price: json["price"],
        category: json["category"],
        rating: json["rating"]?.toDouble(),
        description: json["description"],
        isFeatured: json["is_featured"],
        imageUrl: json["image_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "owner_name": ownerName,
        "name": name,
        "price": price,
        "category": category,
        "rating": rating,
        "description": description,
        "is_featured": isFeatured,
        "image_url": imageUrl,
    };
}
