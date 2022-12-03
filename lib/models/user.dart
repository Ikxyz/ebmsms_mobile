import 'dart:convert';

import 'package:flutter/foundation.dart';

class User {
  final String username;
  final String uid;
  final String firstName;
  final String lastName;
  final String profileUrl;
  final String email;
  final bool isEmailVerified;
  final bool isAgent;
  final bool isUser;
  final bool isAdmin;
  final bool isSuper;
  final List<String> roles;
  final String gender;
  final String businessSector;
  final String localGovernmentOfResident;
  final String? pwd;
  final String tel;
  final String stateOfOrigin;
}
