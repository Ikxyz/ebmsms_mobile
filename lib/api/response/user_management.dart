import 'package:edo_jobs_portal/models/index.dart';

class UserManagementHttpResponse extends HttpResponse<Credentials> {
  UserManagementHttpResponse(
      super.message, super.code, super.status, super.data);

  static HttpResponse<Credentials> addUserHttpResponse(
      Map<String, dynamic> map) {
    return HttpResponse(map['message'], map['code'], map['status'],
        Credentials.fromMap(map['data']));
  }

  static HttpResponse<List<UserModel>> findUser(Map<String, dynamic> map) {
    return HttpResponse(
        map['message'],
        map['code'],
        map['status'],
        (map['data'] ?? [] as List<Map<String, dynamic>>)
            .map((e) => UserModel.fromMap(e))
            .toList());
  }
}
