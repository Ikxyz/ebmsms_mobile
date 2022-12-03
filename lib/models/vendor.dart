import "dart:convert";
import 'dart:convert';

import "bank.dart";

class Vendor {
  String uid;
  String regNo;
  String cacNo;
  int sold;
  double rating;
  int product;
  Bank bank;
  Vendor({
    required this.uid,
    required this.regNo,
    required this.cacNo,
    required this.sold,
    required this.rating,
    required this.product,
    required this.bank,
  });

  Vendor copyWith({
    String? uid,
    String? regNo,
    String? cacNo,
    int? sold,
    double? rating,
    int? product,
    Bank? bank,
  }) {
    return Vendor(
      uid: uid ?? this.uid,
      regNo: regNo ?? this.regNo,
      cacNo: cacNo ?? this.cacNo,
      sold: sold ?? this.sold,
      rating: rating ?? this.rating,
      product: product ?? this.product,
      bank: bank ?? this.bank,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'regNo': regNo,
      'cacNo': cacNo,
      'sold': sold,
      'rating': rating,
      'product': product,
      'bank': bank.toMap(),
    };
  }

  factory Vendor.fromMap(Map<String, dynamic> map) {
    return Vendor(
      uid: map['uid'],
      regNo: map['regNo'],
      cacNo: map['cacNo'],
      sold: map['sold'],
      rating: map['rating'],
      product: map['product'],
      bank: Bank.fromMap(map['bank']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Vendor.fromJson(String source) => Vendor.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Vendor(uid: $uid, regNo: $regNo, cacNo: $cacNo, sold: $sold, rating: $rating, product: $product, bank: $bank)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Vendor &&
        other.uid == uid &&
        other.regNo == regNo &&
        other.cacNo == cacNo &&
        other.sold == sold &&
        other.rating == rating &&
        other.product == product &&
        other.bank == bank;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        regNo.hashCode ^
        cacNo.hashCode ^
        sold.hashCode ^
        rating.hashCode ^
        product.hashCode ^
        bank.hashCode;
  }
}
