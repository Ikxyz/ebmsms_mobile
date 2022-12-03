import "package:edo_jobs_portal/State/base.dart";

import "../global.dart";
import "../models/user.dart";

class RegisterState extends BaseState {
  String password = "";
  String confirmPassword = "";

  final TextEditingController passwordController = TextEditingController();

  final UserModel user = UserModel(
      firstName: "",
      lastName: "",
      email: "",
      tel: "",
      uid: "",
      profileUrl: "",
      coverImg: "",
      isAdmin: false,
      isAgent: false,
      isEnabled: true,
      isBanned: false,
      lastModified: DateTime.now().toIso8601String());
}
