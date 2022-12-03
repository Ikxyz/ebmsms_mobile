import 'package:edo_jobs_portal/api/api.dart';
import 'package:edo_jobs_portal/api/auth.dart';
import 'package:edo_jobs_portal/global.dart';
import 'package:edo_jobs_portal/helpers/log.dart';
import 'package:edo_jobs_portal/models/credentials.dart';
import 'package:edo_jobs_portal/pages/Auth/login.dart';
import 'package:edo_jobs_portal/providers/context.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../State/auth.dart';
import '../models/user.dart';

final authProvider = StateNotifierProvider<Auth, AuthState>((ref) {
  return Auth(ref.read);
});

final currentUser = StateProvider<User?>((ref) {
  return ref.watch(authProvider.select((auth) => auth.credentials)).data;
});

final isLoggedIn = StateProvider<bool>((ref) {
  final credential = ref.watch(authProvider.select((auth) => auth.credentials));
  return credential.token.isNotEmpty && credential.data != null;
});

final loginFormProvider = Provider<GlobalKey<FormState>>((ref) {
  return ref.watch(authProvider).formKey;
});

class Auth extends StateNotifier<AuthState> with AuthApi implements AuthClass {
  final Reader read;
  Auth(this.read)
      : super(AuthState(
            username: "",
            password: "",
            isLoading: false,
            formKey: GlobalKey<FormState>(),
            credentials:
                Credentials(token: "", refresh_token: "", data: null)));

  @override
  bool get isLoading {
    return state.isLoading;
  }

  @override
  GlobalKey<FormState> get formKey {
    return state.formKey;
  }

  @override
  Credentials get credentials {
    return state.credentials;
  }

  @override
  void setLoading(bool e) {
    state = state.setLoading(e);
  }

  @override
  void setCredentials(Credentials e) {
    state = state.setCredentials(e);
  }

  @override
  void setUsername(String? username) {
    state = state.copyWith(username: username);
  }

  @override
  void setPassword(String? password) {
    state = state.copyWith(password: password);
  }

  @override
  Future<void> login() async {
    if (!state.formKey.currentState!.validate()) {
      throw Log("form is invalid").log();
    }

    setLoading(true);

    state.formKey.currentState!.save();

    final result = await handleLoginWithUsernameAndPassword(
            read(apiProvider), state.username, state.password)
        .whenComplete(() => setLoading(false));

    if (result.status != true) {
      return;
    }

    state = state.copyWith(credentials: result.data);
  }

  @override
  void updateCredentials(Credentials? credentials) {
    state = state.copyWith(credentials: credentials);
  }


  @override
  Future<void> changePassword() {
    // TODO: implement changePassword
    throw UnimplementedError();
  }

  @override
  void logOut([BuildContext? context]) {
    state = state.copyWith(
        credentials: Credentials(token: "", refresh_token: "", data: null));
    if (context != null) {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(Login.route, (route) => false);
    }
  }
}
