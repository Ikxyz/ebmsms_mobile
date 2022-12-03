import 'dart:convert';

import 'package:edo_jobs_portal/models/user.dart';

class Credentials {
  final String token;
  final String refresh_token;
  final User? data;

  Credentials(
      {required this.token, required this.refresh_token, required this.data});

  Credentials copyWith({
    String? username,
    String? pwd,
    String? token,
    String? refreshToken,
    User? data,
  }) {
    return Credentials(
      token: token ?? this.token,
      refresh_token: refreshToken ?? this.refresh_token,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'token': token,
      'refresh_token': refresh_token,
      'data': data?.toMap(),
    };
  }

  factory Credentials.fromMap(Map<String, dynamic> map) {
    return Credentials(
      token: map['token'],
      refresh_token: map['refresh_token'],
      data: User.fromMap(map['data']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Credentials.fromJson(String source) =>
      Credentials.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Login(  token: $token, refresh_token: $refresh_token, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Credentials &&
        other.token == token &&
        other.refresh_token == refresh_token &&
        other.data == data;
  }

  @override
  int get hashCode {
    return token.hashCode ^ refresh_token.hashCode ^ data.hashCode;
  }
}
