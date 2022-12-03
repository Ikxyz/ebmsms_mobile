import "dart:convert";

class PaymentMethod {
  final String holder;
  final String number;
  final String month;
  final String year;
  final String cvv;
  final bool isDefault;
  final num timestamp;

  PaymentMethod({
    required this.holder,
    required this.number,
    required this.month,
    required this.year,
    required this.cvv,
    required this.isDefault,
    required this.timestamp,
  });

  PaymentMethod copyWith({
    String? holder,
    String? number,
    String? month,
    String? year,
    String? cvv,
    bool? isDefault,
    num? timestamp,
  }) {
    return PaymentMethod(
      holder: holder ?? this.holder,
      number: number ?? this.number,
      month: month ?? this.month,
      year: year ?? this.year,
      cvv: cvv ?? this.cvv,
      isDefault: isDefault ?? this.isDefault,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "holder": holder,
      "number": number,
      "month": month,
      "year": year,
      "cvv": cvv,
      "isDefault": isDefault,
      "timestamp": timestamp,
    };
  }

  factory PaymentMethod.fromMap(Map<String, dynamic> map) {
    return PaymentMethod(
      holder: map["holder"],
      number: map["number"],
      month: map["month"],
      year: map["year"],
      cvv: map["cvv"],
      isDefault: map["isDefault"],
      timestamp: map["timestamp"],
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentMethod.fromJson(String source) =>
      PaymentMethod.fromMap(json.decode(source));

  @override
  String toString() {
    return "PaymentMethod(holder: $holder, number: $number, month: $month, year: $year, cvv: $cvv, isDefault: $isDefault, timestamp: $timestamp)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PaymentMethod &&
        other.holder == holder &&
        other.number == number &&
        other.month == month &&
        other.year == year &&
        other.cvv == cvv &&
        other.isDefault == isDefault &&
        other.timestamp == timestamp;
  }

  @override
  int get hashCode {
    return holder.hashCode ^
        number.hashCode ^
        month.hashCode ^
        year.hashCode ^
        cvv.hashCode ^
        isDefault.hashCode ^
        timestamp.hashCode;
  }
}
