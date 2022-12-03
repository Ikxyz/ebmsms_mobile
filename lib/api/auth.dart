

import 'package:dio/dio.dart';
import 'package:edo_jobs_portal/api/api.dart';
import 'package:edo_jobs_portal/api/routes.dart';
import 'package:edo_jobs_portal/helpers/async.dart';
import 'package:edo_jobs_portal/helpers/log.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'response/auth.dart';

abstract class _AuthApi {
  Future<LoginHttpResponse> handleLoginWithUsernameAndPassword(
      Api api,
      String username, String password);
}

class AuthApi implements _AuthApi {
  @override
  Future<LoginHttpResponse> handleLoginWithUsernameAndPassword(
      Api api,
      String username, String password) async {
    return await AsyncHandler.httpRequest(() async {
      final payload = {"username": username, "pwd": password};

      final req = await api.http
          .post<Map<String, dynamic>>(ApiEndpoints.login, data: payload);
      return LoginHttpResponse.fromMap(req.data!);
    });
  }
}
