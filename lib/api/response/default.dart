import 'package:edo_jobs_portal/models/http_request.dart';

class DefaultHttpResponse<T> extends HttpResponse<T> {
  DefaultHttpResponse({message, code, status, data})
      : super(message, code, status, data);

  static fromMap(Map<String, dynamic> map) {
    return DefaultHttpResponse(
        message: map['message'],
        status: map['status'],
        code: map['code'] ?? 0,
        data: map['data']);
  }
}
