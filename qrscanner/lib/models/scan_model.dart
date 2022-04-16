// To parse this JSON data, do
//
//     final scanModel = scanModelFromJson(jsonString);

import 'dart:convert';

ScanModel scanModelFromJson(String str) => ScanModel.fromJson(json.decode(str));

String scanModelToJson(ScanModel data) => json.encode(data.toJson());

class ScanModel {
  ScanModel({
    required this.id,
    required this.type,
    required this.valor,
  }) {
    if (this.valor.contains("http")) {
      this.type = 'http';
    } else {
      this.type = 'geo';
    }
  }

  int id;
  String type;
  String valor;

  factory ScanModel.fromJson(Map<String, dynamic> json) => ScanModel(
        id: json["id"],
        type: json["type"],
        valor: json["valor"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "valor": valor,
      };
}
