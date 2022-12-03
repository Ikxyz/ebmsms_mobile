import 'package:edo_jobs_portal/api/response/application.dart';
import 'package:edo_jobs_portal/api/routes.dart';
import 'package:edo_jobs_portal/helpers/async.dart';
import 'package:edo_jobs_portal/models/index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'api.dart';
import 'response/application.dart';

final applicationApiProvider = Provider((ref) => ApplicationApi(ref.read));

abstract class ApplicationApiClass {
  Future<HttpResponse<ApplicationModel>> createApplication(
      ApplicationType type, ApplicationModel application);
}

class ApplicationApi implements ApplicationApiClass {
  Reader read;

  ApplicationApi(this.read);

  @override
  Future<HttpResponse<ApplicationModel>> createApplication(
      ApplicationType type, ApplicationModel application) {
    return AsyncHandler.httpRequest(() async {
      final result = await read(apiProvider).http.post(
          ApiEndpoints.applyLoanGrantApplication(type),
          data: application.toMap());

      return ApplicationHttpResponse.createApplication(result.data);
    });
  }
}
