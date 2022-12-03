import 'package:edo_jobs_portal/models/index.dart';

class ApplicationHttpResponse extends HttpResponse<Credentials> {
  ApplicationHttpResponse(super.message, super.code, super.status, super.data);

  static HttpResponse<ApplicationModel> createApplication(
      Map<String, dynamic> map) {
    return HttpResponse(map["message"], map['code'], map['status'],
        ApplicationModel.fromMap(map));
  }
}
