import 'package:edo_jobs_portal/State/user_management.dart';
import 'package:edo_jobs_portal/api/response/user_management.dart';
import 'package:edo_jobs_portal/api/routes.dart';
import 'package:edo_jobs_portal/helpers/async.dart';
import 'package:edo_jobs_portal/models/http_request.dart';
import 'package:edo_jobs_portal/models/index.dart';

import 'api.dart';

abstract class UserManagementApiClass {
  Future<HttpResponse<Credentials>> handleAddUser(Api api, payload);

  Future<HttpResponse<List<UserModel>>> handleFindUser(
      Api api, String key, String val);
}

class UserManagementApi implements UserManagementApiClass {
  @override
  Future<HttpResponse<Credentials>> handleAddUser(Api api, payload) async {
    return AsyncHandler.httpRequest(() async {
      final result = await api.http
          .post<Map<String, dynamic>>(ApiEndpoints.register, data: payload);
      return UserManagementHttpResponse.addUserHttpResponse(result.data!);
    });
  }

  @override
  Future<HttpResponse<List<UserModel>>> handleFindUser(
      Api api, String key, String val) async {
    return AsyncHandler.httpRequest(() async {
      final result = await api.http.get<Map<String, dynamic>>(
          ApiEndpoints.search,
          queryParameters: {"key": key, "val": val});

      return UserManagementHttpResponse.findUser(result.data!);
    });
  }
}
