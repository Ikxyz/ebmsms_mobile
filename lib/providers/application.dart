// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:edo_jobs_portal/State/application.dart';
import 'package:edo_jobs_portal/api/application.dart';
import 'package:edo_jobs_portal/api/routes.dart';
import 'package:edo_jobs_portal/global.dart';
import 'package:edo_jobs_portal/helpers/log.dart';
import 'package:edo_jobs_portal/helpers/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../global.dart';
import '../models/index.dart';

final applicationProvider = StateNotifierProvider.family<
    ApplicationProvider,
    ApplicationState,
    UserModel>((ref, UserModel user) => ApplicationProvider(ref.read, user));

class ApplicationProvider extends StateNotifier<ApplicationState>
    implements ApplicationClass {
  final Reader read;
  final UserModel user;

  ApplicationProvider(this.read, this.user)
      : super(ApplicationState(
            application: ApplicationState.clearApplication(),
            isLoading: false,
            user: user,
            acceptTermsAndCondition: false,
            formState: GlobalKey<FormState>())) {
    updateApplication((_state) {
      _state = _state.copyWith(firstName: user.firstName,lastName: user.lastName,email: user.email,phone: user.tel,gender: user.gender);
      return _state;
    });
  }

  @override
  void setAcceptTermsAndCondition(bool? e) {
    state = state.copyWith(acceptTermsAndCondition: e);
  }

  @override
  void setApplication(ApplicationModel _application) {
    state = state.copyWith(application: _application);
  }

  @override
  void setLoading(bool e) {
    state = state.copyWith(isLoading: e);
  }

  @override
  void updateApplication(UpdateApplication e) {
    state = state.copyWith(application: e(state.application));
  }

  @override
  Future<void> createApplication(
      BuildContext context, ApplicationType applicationType) async {
    if (state.formState.currentState == null) {
      return;
    }

    if (state.formState.currentState!.validate() == false) {
      throw Log("form is invalid").log();
    }

    state.formState.currentState!.save();

    final result = await read(applicationApiProvider)
        .createApplication(applicationType, state.application)
        .whenComplete(() => setLoading(false));

    showSankBar(result.message.capitalize, context);

    if (result.status == true) {
      /*TODO: Uncomment this section after testing
      // state = state.copyWith(application: ApplicationState.clearApplication());
      // state.formState.currentState!.reset();*/
    } else {}
  }
}
