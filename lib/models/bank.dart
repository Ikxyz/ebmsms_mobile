import "dart:convert";

class Bank {
  String name;
  String number;
  String bank;
  Bank({
    required this.name,
    required this.number,
    required this.bank,
  });

  Bank copyWith({
    String? name,
    String? number,
    String? bank,
  }) {
    return Bank(
      name: name ?? this.name,
      number: number ?? this.number,
      bank: bank ?? this.bank,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "number": number,
      "bank": bank,
    };
  }

  factory Bank.fromMap(Map<String, dynamic> map) {
    return Bank(
      name: map["name"],
      number: map["number"],
      bank: map["bank"],
    );
  }

  String toJson() => json.encode(toMap());

  factory Bank.fromJson(String source) => Bank.fromMap(json.decode(source));

  @override
  String toString() => "Bank(name: $name, number: $number, bank: $bank)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Bank &&
        other.name == name &&
        other.number == number &&
        other.bank == bank;
  }

  @override
  int get hashCode => name.hashCode ^ number.hashCode ^ bank.hashCode;
}
