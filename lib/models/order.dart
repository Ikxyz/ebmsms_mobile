import "dart:convert";

import "./address.dart";

class Order {
  final String id;
  final String productId;
  final String vendor;
  final int quantity;
  final double amount;
  final double vat;
  final double total;
  final String uid;
  final Address shippingAddress;
  final bool isPaid;
  final bool isProcessed;
  final bool isShipped;
  final bool isDelivered;
  final bool isCancelled;
  final bool isReturned;
  final String estimatedDeliveryDate;
  final String createdAt;
  final String updatedAt;
  final num lastModified;
  final num timestamp;
  Order({
    required this.id,
    required this.productId,
    required this.vendor,
    required this.quantity,
    required this.amount,
    required this.vat,
    required this.total,
    required this.uid,
    required this.shippingAddress,
    required this.isPaid,
    required this.isProcessed,
    required this.isShipped,
    required this.isDelivered,
    required this.isCancelled,
    required this.isReturned,
    required this.estimatedDeliveryDate,
    required this.createdAt,
    required this.updatedAt,
    required this.lastModified,
    required this.timestamp,
  });

  Order copyWith({
    String? id,
    String? productId,
    String? vendor,
    int? quantity,
    double? amount,
    double? vat,
    double? total,
    String? uid,
    Address? shippingAddress,
    bool? isPaid,
    bool? isProcessed,
    bool? isShipped,
    bool? isDelivered,
    bool? isCancelled,
    bool? isReturned,
    String? estimatedDeliveryDate,
    String? createdAt,
    String? updatedAt,
    num? lastModified,
    num? timestamp,
  }) {
    return Order(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      vendor: vendor ?? this.vendor,
      quantity: quantity ?? this.quantity,
      amount: amount ?? this.amount,
      vat: vat ?? this.vat,
      total: total ?? this.total,
      uid: uid ?? this.uid,
      shippingAddress: shippingAddress ?? this.shippingAddress,
      isPaid: isPaid ?? this.isPaid,
      isProcessed: isProcessed ?? this.isProcessed,
      isShipped: isShipped ?? this.isShipped,
      isDelivered: isDelivered ?? this.isDelivered,
      isCancelled: isCancelled ?? this.isCancelled,
      isReturned: isReturned ?? this.isReturned,
      estimatedDeliveryDate:
          estimatedDeliveryDate ?? this.estimatedDeliveryDate,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      lastModified: lastModified ?? this.lastModified,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "productId": productId,
      "vendor": vendor,
      "quantity": quantity,
      "amount": amount,
      "vat": vat,
      "total": total,
      "uid": uid,
      "shippingAddress": shippingAddress.toMap(),
      "isPaid": isPaid,
      "isProcessed": isProcessed,
      "isShipped": isShipped,
      "isDelivered": isDelivered,
      "isCancelled": isCancelled,
      "isReturned": isReturned,
      "estimatedDeliveryDate": estimatedDeliveryDate,
      "createdAt": createdAt,
      "updatedAt": updatedAt,
      "lastModified": lastModified,
      "timestamp": timestamp,
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      id: map["id"],
      productId: map["productId"],
      vendor: map["vendor"],
      quantity: map["quantity"],
      amount: map["amount"],
      vat: map["vat"],
      total: map["total"],
      uid: map["uid"],
      shippingAddress: Address.fromMap(map["shippingAddress"]),
      isPaid: map["isPaid"],
      isProcessed: map["isProcessed"],
      isShipped: map["isShipped"],
      isDelivered: map["isDelivered"],
      isCancelled: map["isCancelled"],
      isReturned: map["isReturned"],
      estimatedDeliveryDate: map["estimatedDeliveryDate"],
      createdAt: map["createdAt"],
      updatedAt: map["updatedAt"],
      lastModified: map["lastModified"],
      timestamp: map["timestamp"],
    );
  }

  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) => Order.fromMap(json.decode(source));

  @override
  String toString() {
    return "Order(id: $id, productId: $productId, vendor: $vendor, quantity: $quantity, amount: $amount, vat: $vat, total: $total, uid: $uid, shippingAddress: $shippingAddress, isPaid: $isPaid, isProcessed: $isProcessed, isShipped: $isShipped, isDelivered: $isDelivered, isCancelled: $isCancelled, isReturned: $isReturned, estimatedDeliveryDate: $estimatedDeliveryDate, createdAt: $createdAt, updatedAt: $updatedAt, lastModified: $lastModified, timestamp: $timestamp)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Order &&
        other.id == id &&
        other.productId == productId &&
        other.vendor == vendor &&
        other.quantity == quantity &&
        other.amount == amount &&
        other.vat == vat &&
        other.total == total &&
        other.uid == uid &&
        other.shippingAddress == shippingAddress &&
        other.isPaid == isPaid &&
        other.isProcessed == isProcessed &&
        other.isShipped == isShipped &&
        other.isDelivered == isDelivered &&
        other.isCancelled == isCancelled &&
        other.isReturned == isReturned &&
        other.estimatedDeliveryDate == estimatedDeliveryDate &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.lastModified == lastModified &&
        other.timestamp == timestamp;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        productId.hashCode ^
        vendor.hashCode ^
        quantity.hashCode ^
        amount.hashCode ^
        vat.hashCode ^
        total.hashCode ^
        uid.hashCode ^
        shippingAddress.hashCode ^
        isPaid.hashCode ^
        isProcessed.hashCode ^
        isShipped.hashCode ^
        isDelivered.hashCode ^
        isCancelled.hashCode ^
        isReturned.hashCode ^
        estimatedDeliveryDate.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        lastModified.hashCode ^
        timestamp.hashCode;
  }
}
