import 'package:edo_jobs_portal/api/api.dart';

enum ApplicationType { loan, grant }

class ApiEndpoints {
  static const base = host;
  static const String login = base + "/sign-in";
  static const String register = base + "/sign-up";
  static const String reAuth = base + "/re-auth";
  static const String search = base + "/user/search";
  static applyLoanGrantApplication(ApplicationType type) =>
      base + "/application/${type.name.toString()}/create";
}
