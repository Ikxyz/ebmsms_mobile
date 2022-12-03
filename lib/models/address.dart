import 'dart:convert';

import 'package:collection/collection.dart';

class Address {
  final String? street;
  final String? city;
  final String? state;
  final String? zipCode;

  const Address({this.street, this.city, this.state, this.zipCode});

  @override
  String toString() {
    return 'Address(street: $street, city: $city, state: $state, zipCode: $zipCode)';
  }

  factory Address.fromMap(Map<String, dynamic> data) => Address(
        street: data['street'] as String?,
        city: data['city'] as String?,
        state: data['state'] as String?,
        zipCode: data['zipCode'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'street': street,
        'city': city,
        'state': state,
        'zipCode': zipCode,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Address].
  factory Address.fromJson(String data) {
    return Address.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Address] to a JSON string.
  String toJson() => json.encode(toMap());

  Address copyWith({
    String? street,
    String? city,
    String? state,
    String? zipCode,
  }) {
    return Address(
      street: street ?? this.street,
      city: city ?? this.city,
      state: state ?? this.state,
      zipCode: zipCode ?? this.zipCode,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Address) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      street.hashCode ^ city.hashCode ^ state.hashCode ^ zipCode.hashCode;
}
