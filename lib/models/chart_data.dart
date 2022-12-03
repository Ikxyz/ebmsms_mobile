// To parse this JSON data, do
//
//     final deezerSongModel = deezerSongModelFromJson(jsonString);

import 'dart:convert';

List<DeezerSongModel> deezerSongModelFromJson(String str) =>
    List<DeezerSongModel>.from(
        json.decode(str).map((x) => DeezerSongModel.fromJson(x)));

String deezerSongModelToJson(List<DeezerSongModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DeezerSongModel {
  DeezerSongModel({
    required this.name,
    required this.gender,
    required this.probability,
    required this.count,
  });

  String name;
  String gender;
  double probability;
  int count;

  factory DeezerSongModel.fromJson(Map<String, dynamic> json) =>
      DeezerSongModel(
        name: json["name"],
        gender: json["gender"],
        probability: json["probability"].toDouble(),
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "gender": gender,
        "probability": probability,
        "count": count,
      };
}
