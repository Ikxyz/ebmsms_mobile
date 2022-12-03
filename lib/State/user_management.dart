// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:edo_jobs_portal/global.dart';
import 'package:edo_jobs_portal/models/index.dart';

class _AddUserForm {
  final String firstName;
  final String lastName;
  final String username;
  final String gender;
  final String businessSector;
  final String localGovernmentOfResident;
  final String email;
  final String pwd;
  final String tel;
  final String stateOfOrigin;
  _AddUserForm({
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.gender,
    required this.businessSector,
    required this.localGovernmentOfResident,
    required this.email,
    required this.pwd,
    required this.tel,
    required this.stateOfOrigin,
  });

  _AddUserForm copyWith({
    String? firstName,
    String? lastName,
    String? username,
    String? gender,
    String? businessSector,
    String? localGovernmentOfResident,
    String? email,
    String? pwd,
    String? tel,
    String? stateOfOrigin,
  }) {
    return _AddUserForm(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      username: username ?? this.username,
      gender: gender ?? this.gender,
      businessSector: businessSector ?? this.businessSector,
      localGovernmentOfResident:
          localGovernmentOfResident ?? this.localGovernmentOfResident,
      email: email ?? this.email,
      pwd: pwd ?? this.pwd,
      tel: tel ?? this.tel,
      stateOfOrigin: stateOfOrigin ?? this.stateOfOrigin,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
      'gender': gender,
      'businessSector': businessSector,
      'localGovernmentOfResident': localGovernmentOfResident,
      'email': email,
      'pwd': pwd,
      'tel': tel,
      'stateOfOrigin': stateOfOrigin,
    };
  }

  factory _AddUserForm.fromMap(Map<String, dynamic> map) {
    return _AddUserForm(
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      username: map['username'] as String,
      gender: map['gender'] as String,
      businessSector: map['businessSector'] as String,
      localGovernmentOfResident: map['localGovernmentOfResident'] as String,
      email: map['email'] as String,
      pwd: map['pwd'] as String,
      tel: map['tel'] as String,
      stateOfOrigin: map['stateOfOrigin'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory _AddUserForm.fromJson(String source) =>
      _AddUserForm.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return '_AddUserForm(firstName: $firstName, lastName: $lastName, username: $username, gender: $gender, businessSector: $businessSector, localGovernmentOfResident: $localGovernmentOfResident, email: $email, pwd: $pwd, tel: $tel, stateOfOrigin: $stateOfOrigin)';
  }

  @override
  bool operator ==(covariant _AddUserForm other) {
    if (identical(this, other)) return true;

    return other.firstName == firstName &&
        other.lastName == lastName &&
        other.username == username &&
        other.gender == gender &&
        other.businessSector == businessSector &&
        other.localGovernmentOfResident == localGovernmentOfResident &&
        other.email == email &&
        other.pwd == pwd &&
        other.tel == tel &&
        other.stateOfOrigin == stateOfOrigin;
  }

  @override
  int get hashCode {
    return firstName.hashCode ^
        lastName.hashCode ^
        username.hashCode ^
        gender.hashCode ^
        businessSector.hashCode ^
        localGovernmentOfResident.hashCode ^
        email.hashCode ^
        pwd.hashCode ^
        tel.hashCode ^
        stateOfOrigin.hashCode;
  }
}

@immutable
class UserManagementState {
  final _AddUserForm newUser;
  final bool isLoading;
  final String searchQuery;
  final List<UserModel> searchResult;
  final GlobalKey<FormState> addUserForm;
  final GlobalKey<FormState> searchForm;
  final List<String> lgaSelection;
  const UserManagementState({
    required this.newUser,
    required this.isLoading,
    required this.searchQuery,
    required this.searchResult,
    required this.addUserForm,
    required this.searchForm,
    required this.lgaSelection,
  });

  static _AddUserForm clearUser() {
    return _AddUserForm(
        firstName: "",
        lastName: "",
        username: "",
        gender: "",
        businessSector: "",
        localGovernmentOfResident: "",
        email: "",
        pwd: "",
        tel: "",
        stateOfOrigin: "");
  }

  UserManagementState copyWith({
    _AddUserForm? newUser,
    bool? isLoading,
    String? searchQuery,
    List<UserModel>? searchResult,
    GlobalKey<FormState>? addUserForm,
    GlobalKey<FormState>? searchForm,
    List<String>? lgaSelection,
  }) {
    return UserManagementState(
      newUser: newUser ?? this.newUser,
      isLoading: isLoading ?? this.isLoading,
      searchQuery: searchQuery ?? this.searchQuery,
      searchResult: searchResult ?? this.searchResult,
      addUserForm: addUserForm ?? this.addUserForm,
      searchForm: searchForm ?? this.searchForm,
      lgaSelection: lgaSelection ?? this.lgaSelection,
    );
  }
}

abstract class UserManagementClass {
  get stateOfOrigin;
  get lgaSelection;
  bool get isLoading;

  void setFirstName(String? e);

  void setLastName(String? e);

  void setPassword(String? e);

  void setUsername(String? e);

  void setGender(String? e);

  void setIsLoading(bool e);

  void setBusinessSector(String? e);

  void setLocalGovernment(String? e);

  void setStateOfOrigin(String? e);

  // void setLgaSelection(String? e);

  void setEmail(String? e);

  void setTel(String? e);

  void setSearchQuery(String? e);

  String getSearchKey(String val);

  Future<void> findUser(BuildContext context);

  Future<void> verifyUser(BuildContext context);

  Future<void> addUser(BuildContext context);
}
