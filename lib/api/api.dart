export "auth.dart";
export 'auth.dart';

import 'package:dio/dio.dart';
import 'package:edo_jobs_portal/api/routes.dart';
import 'package:edo_jobs_portal/global.dart';
import 'package:edo_jobs_portal/helpers/log.dart';
import 'package:edo_jobs_portal/models/index.dart';
import 'package:edo_jobs_portal/providers/auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const debugHost = "http://192.168.0.102:8080";
const productionHost = "https://edojobs.herokuapp.com";

const String host = debug ? debugHost : productionHost;

final apiProvider = Provider((ref) => Api(read: ref.read));

class Api {
  final Reader read;
  final http = Dio();

  Api({required this.read}) {
    addLogInterceptor();
    addAuthenticationInceptors();
  }

  void addLogInterceptor() {
    if (debug == false) return;

    http.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));
  }

  void addAuthenticationInceptors() {
    http.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      final auth = read(authProvider.notifier);

      options.headers.addAll({"Authorization": auth.credentials.token});
      return handler.next(options);
    }, onError: (err, handler) async {
      final auth = read(authProvider.notifier);

      if (err.response?.statusCode != 401 &&
          err.response?.data['message'] == "invalid access token") {
        Log("token expired").log();

        auth.setCredentials(await refreshToken(auth.credentials));
        Log("Got new token").log();

        handler.resolve(await _retry(err.requestOptions));
      }

      return handler.next(err);
    }));
  }

  Future<Credentials> refreshToken(Credentials credentials) async {
    Log("Request to refresh token").log();

    try {
      final response = await Dio().get(ApiEndpoints.reAuth,
          options:
              Options(headers: {"Authorization": credentials.refresh_token}));

      if (response.statusCode == 200) {
        credentials = credentials.copyWith(token: response.data['data']);
      }
    } catch (err) {
      credentials = Credentials(token: "", refresh_token: "", data: null);
    }
    return credentials;
  }

  Future<Response<dynamic>> _retry(RequestOptions _options) {
    Log("Retrying Request").log();
    final options = Options(method: _options.method, headers: _options.headers);

    return http.request(_options.path, data: _options.data, options: options);
  }
}
