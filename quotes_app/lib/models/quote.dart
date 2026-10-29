// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  final int id;
  final String quote;
  final String author;

  Welcome({required this.id, required this.quote, required this.author});

  factory Welcome.fromJson(Map<String, dynamic> json) =>
      Welcome(id: json["id"], quote: json["quote"], author: json["author"]);

  Map<String, dynamic> toJson() => {"id": id, "quote": quote, "author": author};
}
