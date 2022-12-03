import 'dart:developer';

import 'package:edo_jobs_portal/api/response/default.dart';
import 'package:edo_jobs_portal/models/credentials.dart';
import 'package:edo_jobs_portal/models/http_request.dart';

class LoginHttpResponse extends HttpResponse<Credentials> {
  LoginHttpResponse({message, code, status, data})
      : super(message, code, status, data);

  static LoginHttpResponse fromMap(Map<String, dynamic> map) {
    return LoginHttpResponse(
        message: map['message'],
        status: map['status'],
        code: map['code'] ?? 0,
        data: Credentials.fromMap(map['data']));
  }
}
