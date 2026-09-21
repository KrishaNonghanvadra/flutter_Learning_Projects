// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
    bool success;
    String message;
    int count;
    List<Datum> data;

    Products({
        required this.success,
        required this.message,
        required this.count,
        required this.data,
    });

    factory Products.fromJson(Map<String, dynamic> json) => Products(
        success: json["success"],
        message: json["message"],
        count: json["count"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "count": count,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    int id;
    String name;
    String price;
    String description;
    int status;
    String createdAt;
    String updatedAt;

    Datum({
        required this.id,
        required this.name,
        required this.price,
        required this.description,
        required this.status,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        status: json["status"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "description": description,
        "status": status,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
