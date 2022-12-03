import "dart:convert";

import "package:flutter/foundation.dart";

const Map<String, dynamic> DefaultMetaData = {};
const List<String> DefaultTags = ["#available"];
const List<String> DefaultImages = [];
const List<String> DefaultSizes = [];
const List<String> DefaultColors = [];
const List<String> DefaultCategory = [];
const List<String> DefaultIndexes = [];

class Product {
  String id;
  String vendor;
  String name;
  String desc;
  double amount;
  bool availability;
  int quantity;
  num rating;
  String createdOn;
  num timestamp;
  Map<String, dynamic> metadata;
  List<String> tags;
  List<String> sizes;
  List<String> colors;
  List<String> images;
  List<String> category;
  List<String> indexes;
  Product({
    this.id = "",
    this.vendor = "",
    this.name = "",
    this.desc = "",
    this.amount = 0,
    this.availability = true,
    this.quantity = 0,
    this.rating = 0.0,
    this.createdOn = "",
    this.timestamp = 0,
    this.metadata = DefaultMetaData,
    this.tags = DefaultTags,
    this.sizes = DefaultSizes,
    this.images = DefaultImages,
    this.colors = DefaultColors,
    this.category = DefaultCategory,
    this.indexes = DefaultIndexes,
  });

  Product copyWith({
    String? id,
    String? vendor,
    String? name,
    String? desc,
    double? amount,
    bool? availability,
    int? quantity,
    double? rating,
    String? createdOn,
    num? timestamp,
    Map<String, dynamic>? metadata,
    List<String>? tags,
    List<String>? sizes,
    List<String>? colors,
    List<String>? images,
    List<String>? category,
    List<String>? indexes,
  }) {
    return Product(
      id: id ?? this.id,
      vendor: vendor ?? this.vendor,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      amount: amount ?? this.amount,
      availability: availability ?? this.availability,
      quantity: quantity ?? this.quantity,
      rating: rating ?? this.rating,
      createdOn: createdOn ?? this.createdOn,
      timestamp: timestamp ?? this.timestamp,
      metadata: metadata ?? this.metadata,
      tags: tags ?? this.tags,
      sizes: sizes ?? this.sizes,
      colors: colors ?? this.colors,
      images: images ?? this.images,
      category: category ?? this.category,
      indexes: indexes ?? this.indexes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "vendor": vendor,
      "name": name,
      "desc": desc,
      "amount": amount,
      "availability": availability,
      "quantity": quantity,
      "rating": rating,
      "createdOn": createdOn,
      "timestamp": timestamp,
      "metadata": metadata,
      "tags": tags,
      "sizes": sizes,
      "colors": colors,
      "images": images,
      "category": category,
      "indexes": indexes,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map["id"],
      vendor: map["vendor"],
      name: map["name"],
      desc: map["desc"],
      amount: map["amount"],
      availability: map["availability"],
      quantity: map["quantity"],
      rating: map["rating"],
      createdOn: map["createdOn"],
      timestamp: map["timestamp"],
      metadata: Map<String, dynamic>.from(map["metadata"]),
      tags: List<String>.from(map["tags"]),
      sizes: List<String>.from(map["sizes"]),
      colors: List<String>.from(map["colors"]),
      images: List<String>.from(map["images"]),
      category: List<String>.from(map["category"]),
      indexes: List<String>.from(map["indexes"]),
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() {
    return "Product(id: $id, vendor: $vendor, name: $name, desc: $desc, amount: $amount, availability: $availability, quantity: $quantity, rating: $rating, createdOn: $createdOn, timestamp: $timestamp, metadata: $metadata, tags: $tags, sizes: $sizes, colors: $colors, images: $images, category: $category, indexes: $indexes)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.id == id &&
        other.vendor == vendor &&
        other.name == name &&
        other.desc == desc &&
        other.amount == amount &&
        other.availability == availability &&
        other.quantity == quantity &&
        other.rating == rating &&
        other.createdOn == createdOn &&
        other.timestamp == timestamp &&
        mapEquals(other.metadata, metadata) &&
        listEquals(other.tags, tags) &&
        listEquals(other.sizes, sizes) &&
        listEquals(other.colors, colors) &&
        listEquals(other.images, images) &&
        listEquals(other.category, category) &&
        listEquals(other.indexes, indexes);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        vendor.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        amount.hashCode ^
        availability.hashCode ^
        quantity.hashCode ^
        rating.hashCode ^
        createdOn.hashCode ^
        timestamp.hashCode ^
        metadata.hashCode ^
        tags.hashCode ^
        sizes.hashCode ^
        colors.hashCode ^
        images.hashCode ^
        category.hashCode ^
        indexes.hashCode;
  }
}
