// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:edo_jobs_portal/api/routes.dart';
import 'package:edo_jobs_portal/global.dart';

import '../models/index.dart';

class ApplicationState {
  final ApplicationModel application;
  final UserModel? user;
  final bool isLoading;
  final bool acceptTermsAndCondition;
  final GlobalKey<FormState> formState;
  ApplicationState({
    required this.application,
    this.user,
    required this.isLoading,
    required this.acceptTermsAndCondition,
    required this.formState,
  });

  static ApplicationModel clearApplication() {
    return ApplicationModel(
        title: "Mr",
        firstName: "",
        lastName: "",
        dateOfBirth: "",
        stateOfOrigin: "",
        localGovernmentOfOrigin: "",
        maritalStatus: "",
        gender: "",
        email: "",
        phone: "",
        disability: "",
        bankVerificationNumber: "",
        city: "",
        state: "",
        localGovernmentOfResidence: "",
        category: "",
        businessName: "",
        businessState: "",
        localGovernmentOfBusinessOperation: "",
        staffStrength: "",
        yearsOfBusinessOperation: "",
        businessSector: "",
        amountRequested: 0,
        subType: "",
        headOfBusinessLastName: "",
        headOfBusinessFirstName: "",
        headOfBusinessDateOfBirth: "",
        headOfBusinessPhoneNumber: "",
        headOfBusinessEmail: "",
        headOfBusinessGender: "",
        monthlyTurnOver: 0);
  }

  ApplicationState copyWith({
    ApplicationModel? application,
    UserModel? user,
    bool? isLoading,
    bool? acceptTermsAndCondition,
    GlobalKey<FormState>? formState,
  }) {
    return ApplicationState(
      application: application ?? this.application,
      user: user ?? this.user,
      isLoading: isLoading ?? this.isLoading,
      acceptTermsAndCondition:
          acceptTermsAndCondition ?? this.acceptTermsAndCondition,
      formState: formState ?? this.formState,
    );
  }
}


typedef UpdateApplication = ApplicationModel Function(ApplicationModel model);


abstract class ApplicationClass {
  void setLoading(bool e);
  void setApplication(ApplicationModel _application);

  void updateApplication(UpdateApplication e);

  void setAcceptTermsAndCondition(bool? e);


  Future<void> createApplication(
      BuildContext context, ApplicationType applicationType);

  // void pickBusinessPlan();
}
