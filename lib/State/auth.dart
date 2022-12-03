import "package:edo_jobs_portal/State/base.dart";
import 'package:edo_jobs_portal/global.dart';
import 'package:edo_jobs_portal/models/credentials.dart';
import 'package:edo_jobs_portal/models/user.dart';

@immutable
class AuthState {
  final String username;
  final String password;
  final bool isLoading;
  final GlobalKey<FormState> formKey;

  final Credentials credentials;

  const AuthState(
      {required this.username,
      required this.password,
      required this.isLoading,
      required this.formKey,
      required this.credentials});

  setUsername(String? e) {
    return copyWith(username: username);
  }

  setPassword(String? e) {
    return copyWith(password: password);
  }

  setLoading(bool loadingState) {
    return copyWith(isLoading: loadingState);
  }

  setCredentials(Credentials credentials) {
    return copyWith(credentials: credentials);
  }

  AuthState copyWith(
      {String? username,
      String? password,
      bool? isLoading,
      GlobalKey<FormState>? formKey,
      Credentials? credentials}) {
    return AuthState(
        username: username ?? this.username,
        password: password ?? this.password,
        isLoading: isLoading ?? this.isLoading,
        credentials: credentials ?? this.credentials,
        formKey: formKey ?? this.formKey);
  }
}

abstract class AuthClass {
  bool get isLoading;
  GlobalKey<FormState> get formKey;
  Credentials get credentials;

  void setUsername(String? username);

  void setPassword(String? password);

  void updateCredentials(Credentials? credentials);


  void setLoading(bool e);

  void setCredentials(Credentials e);

  Future<void> login() async {}

  Future<void> changePassword() async {}

  void logOut([BuildContext? context]) async {}



}
