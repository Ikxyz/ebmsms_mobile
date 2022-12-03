// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

import '../global.dart';
import 'address.dart';

@immutable
class ApplicationModel {
  final String title;
  final String firstName;
  final String? middleName;
  final String lastName;
  final String dateOfBirth;
  final String stateOfOrigin;
  final String localGovernmentOfOrigin;
  final String maritalStatus;
  final String gender;
  final String email;
  final String phone;
  final String disability;
  final String bankVerificationNumber;
  final String? street;
  final String? streetTwo;
  final String city;
  final String state;
  final String? utilityBill;
  final String? idCard;
  final String? passport;
  final String? zipCode;
  final String localGovernmentOfResidence;
  final String? type;
  final String category;
  final String? placeOfWork;
  final String businessName;
  final String? businessRegistrationCacNumber;
  final String? businessRegistrationTinNumber;
  final String? businessAddressOne;
  final String? businessAddressTwo;
  final String? businessCity;
  final String businessState;
  final String? lengthOfStay;
  final String? ownedOrRented;
  final String localGovernmentOfBusinessOperation;
  final String staffStrength;
  final String yearsOfBusinessOperation;
  final String businessSector;
  final String? annualTurnover;
  final int amountRequested;
  final int? amountApproved;
  final int? amountAccepted;
  final int? amountPaid;
  final int? totalLoan;
  final String? comments;
  final bool? acceptTermsAndCondition;
  final bool? acceptInformationIsAccurate;
  final String? businessPlan;
  final String? bankStatement;
  final String? creator;
  final String? status;
  final String? id;
  final String? interest;
  final int? duration;
  final String? uid;
  final String? accountNumber;
  final String? bankName;
  final String? bankAccountName;
  final String? ward;
  final String? businessType;
  final String? cropProduct;
  final String? businessWard;
  final String? localGovernmentOfBusiness;
  final String subType;
  final String headOfBusinessLastName;
  final String headOfBusinessFirstName;
  final String headOfBusinessDateOfBirth;
  final String headOfBusinessPhoneNumber;
  final String headOfBusinessEmail;
  final String headOfBusinessGender;
  final int monthlyTurnOver;
  final bool? addressVerified;
  final String? addressVerifiedDate;
  final int? addressVerifiedTimestamp;
  final String? addressVerifiedByAgent;
  final String? applicationCreatedByAgent;
  ApplicationModel({
    required this.title,
    required this.firstName,
    this.middleName,
    required this.lastName,
    required this.dateOfBirth,
    required this.stateOfOrigin,
    required this.localGovernmentOfOrigin,
    required this.maritalStatus,
    required this.gender,
    required this.email,
    required this.phone,
    required this.disability,
    required this.bankVerificationNumber,
    this.street,
    this.streetTwo,
    required this.city,
    required this.state,
    this.utilityBill,
    this.idCard,
    this.passport,
    this.zipCode,
    required this.localGovernmentOfResidence,
    this.type,
    required this.category,
    this.placeOfWork,
    required this.businessName,
    this.businessRegistrationCacNumber,
    this.businessRegistrationTinNumber,
    this.businessAddressOne,
    this.businessAddressTwo,
    this.businessCity,
    required this.businessState,
    this.lengthOfStay,
    this.ownedOrRented,
    required this.localGovernmentOfBusinessOperation,
    required this.staffStrength,
    required this.yearsOfBusinessOperation,
    required this.businessSector,
    this.annualTurnover,
    required this.amountRequested,
    this.amountApproved,
    this.amountAccepted,
    this.amountPaid,
    this.totalLoan,
    this.comments,
    this.acceptTermsAndCondition,
    this.acceptInformationIsAccurate,
    this.businessPlan,
    this.bankStatement,
    this.creator,
    this.status,
    this.id,
    this.interest,
    this.duration,
    this.uid,
    this.accountNumber,
    this.bankName,
    this.bankAccountName,
    this.ward,
    this.businessType,
    this.cropProduct,
    this.businessWard,
    this.localGovernmentOfBusiness,
    required this.subType,
    required this.headOfBusinessLastName,
    required this.headOfBusinessFirstName,
    required this.headOfBusinessDateOfBirth,
    required this.headOfBusinessPhoneNumber,
    required this.headOfBusinessEmail,
    required this.headOfBusinessGender,
    required this.monthlyTurnOver,
    this.addressVerified,
    this.addressVerifiedDate,
    this.addressVerifiedTimestamp,
    this.addressVerifiedByAgent,
    this.applicationCreatedByAgent,
  });

  ApplicationModel copyWith({
    String? title,
    String? firstName,
    String? middleName,
    String? lastName,
    String? dateOfBirth,
    String? stateOfOrigin,
    String? localGovernmentOfOrigin,
    String? maritalStatus,
    String? gender,
    String? email,
    String? phone,
    String? disability,
    String? bankVerificationNumber,
    String? street,
    String? streetTwo,
    String? city,
    String? state,
    String? utilityBill,
    String? idCard,
    String? passport,
    String? zipCode,
    String? localGovernmentOfResidence,
    String? type,
    String? category,
    String? placeOfWork,
    String? businessName,
    String? businessRegistrationCacNumber,
    String? businessRegistrationTinNumber,
    String? businessAddressOne,
    String? businessAddressTwo,
    String? businessCity,
    String? businessState,
    String? lengthOfStay,
    String? ownedOrRented,
    String? localGovernmentOfBusinessOperation,
    String? staffStrength,
    String? yearsOfBusinessOperation,
    String? businessSector,
    String? annualTurnover,
    int? amountRequested,
    int? amountApproved,
    int? amountAccepted,
    int? amountPaid,
    int? totalLoan,
    String? comments,
    bool? acceptTermsAndCondition,
    bool? acceptInformationIsAccurate,
    String? businessPlan,
    String? bankStatement,
    String? creator,
    String? status,
    String? id,
    String? interest,
    int? duration,
    String? uid,
    String? accountNumber,
    String? bankName,
    String? bankAccountName,
    String? ward,
    String? businessType,
    String? cropProduct,
    String? businessWard,
    String? localGovernmentOfBusiness,
    String? subType,
    String? headOfBusinessLastName,
    String? headOfBusinessFirstName,
    String? headOfBusinessDateOfBirth,
    String? headOfBusinessPhoneNumber,
    String? headOfBusinessEmail,
    String? headOfBusinessGender,
    int? monthlyTurnOver,
    bool? addressVerified,
    String? addressVerifiedDate,
    int? addressVerifiedTimestamp,
    String? addressVerifiedByAgent,
    String? applicationCreatedByAgent,
  }) {
    return ApplicationModel(
      title: title ?? this.title,
      firstName: firstName ?? this.firstName,
      middleName: middleName ?? this.middleName,
      lastName: lastName ?? this.lastName,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      stateOfOrigin: stateOfOrigin ?? this.stateOfOrigin,
      localGovernmentOfOrigin:
          localGovernmentOfOrigin ?? this.localGovernmentOfOrigin,
      maritalStatus: maritalStatus ?? this.maritalStatus,
      gender: gender ?? this.gender,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      disability: disability ?? this.disability,
      bankVerificationNumber:
          bankVerificationNumber ?? this.bankVerificationNumber,
      street: street ?? this.street,
      streetTwo: streetTwo ?? this.streetTwo,
      city: city ?? this.city,
      state: state ?? this.state,
      utilityBill: utilityBill ?? this.utilityBill,
      idCard: idCard ?? this.idCard,
      passport: passport ?? this.passport,
      zipCode: zipCode ?? this.zipCode,
      localGovernmentOfResidence:
          localGovernmentOfResidence ?? this.localGovernmentOfResidence,
      type: type ?? this.type,
      category: category ?? this.category,
      placeOfWork: placeOfWork ?? this.placeOfWork,
      businessName: businessName ?? this.businessName,
      businessRegistrationCacNumber:
          businessRegistrationCacNumber ?? this.businessRegistrationCacNumber,
      businessRegistrationTinNumber:
          businessRegistrationTinNumber ?? this.businessRegistrationTinNumber,
      businessAddressOne: businessAddressOne ?? this.businessAddressOne,
      businessAddressTwo: businessAddressTwo ?? this.businessAddressTwo,
      businessCity: businessCity ?? this.businessCity,
      businessState: businessState ?? this.businessState,
      lengthOfStay: lengthOfStay ?? this.lengthOfStay,
      ownedOrRented: ownedOrRented ?? this.ownedOrRented,
      localGovernmentOfBusinessOperation: localGovernmentOfBusinessOperation ??
          this.localGovernmentOfBusinessOperation,
      staffStrength: staffStrength ?? this.staffStrength,
      yearsOfBusinessOperation:
          yearsOfBusinessOperation ?? this.yearsOfBusinessOperation,
      businessSector: businessSector ?? this.businessSector,
      annualTurnover: annualTurnover ?? this.annualTurnover,
      amountRequested: amountRequested ?? this.amountRequested,
      amountApproved: amountApproved ?? this.amountApproved,
      amountAccepted: amountAccepted ?? this.amountAccepted,
      amountPaid: amountPaid ?? this.amountPaid,
      totalLoan: totalLoan ?? this.totalLoan,
      comments: comments ?? this.comments,
      acceptTermsAndCondition:
          acceptTermsAndCondition ?? this.acceptTermsAndCondition,
      acceptInformationIsAccurate:
          acceptInformationIsAccurate ?? this.acceptInformationIsAccurate,
      businessPlan: businessPlan ?? this.businessPlan,
      bankStatement: bankStatement ?? this.bankStatement,
      creator: creator ?? this.creator,
      status: status ?? this.status,
      id: id ?? this.id,
      interest: interest ?? this.interest,
      duration: duration ?? this.duration,
      uid: uid ?? this.uid,
      accountNumber: accountNumber ?? this.accountNumber,
      bankName: bankName ?? this.bankName,
      bankAccountName: bankAccountName ?? this.bankAccountName,
      ward: ward ?? this.ward,
      businessType: businessType ?? this.businessType,
      cropProduct: cropProduct ?? this.cropProduct,
      businessWard: businessWard ?? this.businessWard,
      localGovernmentOfBusiness:
          localGovernmentOfBusiness ?? this.localGovernmentOfBusiness,
      subType: subType ?? this.subType,
      headOfBusinessLastName:
          headOfBusinessLastName ?? this.headOfBusinessLastName,
      headOfBusinessFirstName:
          headOfBusinessFirstName ?? this.headOfBusinessFirstName,
      headOfBusinessDateOfBirth:
          headOfBusinessDateOfBirth ?? this.headOfBusinessDateOfBirth,
      headOfBusinessPhoneNumber:
          headOfBusinessPhoneNumber ?? this.headOfBusinessPhoneNumber,
      headOfBusinessEmail: headOfBusinessEmail ?? this.headOfBusinessEmail,
      headOfBusinessGender: headOfBusinessGender ?? this.headOfBusinessGender,
      monthlyTurnOver: monthlyTurnOver ?? this.monthlyTurnOver,
      addressVerified: addressVerified ?? this.addressVerified,
      addressVerifiedDate: addressVerifiedDate ?? this.addressVerifiedDate,
      addressVerifiedTimestamp:
          addressVerifiedTimestamp ?? this.addressVerifiedTimestamp,
      addressVerifiedByAgent:
          addressVerifiedByAgent ?? this.addressVerifiedByAgent,
      applicationCreatedByAgent:
          applicationCreatedByAgent ?? this.applicationCreatedByAgent,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'firstName': firstName,
      'middleName': middleName,
      'lastName': lastName,
      'dateOfBirth': dateOfBirth,
      'stateOfOrigin': stateOfOrigin,
      'localGovernmentOfOrigin': localGovernmentOfOrigin,
      'maritalStatus': maritalStatus,
      'gender': gender,
      'email': email,
      'phone': phone,
      'disability': disability,
      'bankVerificationNumber': bankVerificationNumber,
      'street': street,
      'streetTwo': streetTwo,
      'city': city,
      'state': state,
      'utilityBill': utilityBill,
      'idCard': idCard,
      'passport': passport,
      'zipCode': zipCode,
      'localGovernmentOfResidence': localGovernmentOfResidence,
      'type': type,
      'category': category,
      'placeOfWork': placeOfWork,
      'businessName': businessName,
      'businessRegistrationCacNumber': businessRegistrationCacNumber,
      'businessRegistrationTinNumber': businessRegistrationTinNumber,
      'businessAddressOne': businessAddressOne,
      'businessAddressTwo': businessAddressTwo,
      'businessCity': businessCity,
      'businessState': businessState,
      'lengthOfStay': lengthOfStay,
      'ownedOrRented': ownedOrRented,
      'localGovernmentOfBusinessOperation': localGovernmentOfBusinessOperation,
      'staffStrength': staffStrength,
      'yearsOfBusinessOperation': yearsOfBusinessOperation,
      'businessSector': businessSector,
      'annualTurnover': annualTurnover,
      'amountRequested': amountRequested,
      'amountApproved': amountApproved,
      'amountAccepted': amountAccepted,
      'amountPaid': amountPaid,
      'totalLoan': totalLoan,
      'comments': comments,
      'acceptTermsAndCondition': acceptTermsAndCondition,
      'acceptInformationIsAccurate': acceptInformationIsAccurate,
      'businessPlan': businessPlan,
      'bankStatement': bankStatement,
      'creator': creator,
      'status': status,
      'id': id,
      'interest': interest,
      'duration': duration,
      'uid': uid,
      'accountNumber': accountNumber,
      'bankName': bankName,
      'bankAccountName': bankAccountName,
      'ward': ward,
      'businessType': businessType,
      'cropProduct': cropProduct,
      'businessWard': businessWard,
      'localGovernmentOfBusiness': localGovernmentOfBusiness,
      'subType': subType,
      'headOfBusinessLastName': headOfBusinessLastName,
      'headOfBusinessFirstName': headOfBusinessFirstName,
      'headOfBusinessDateOfBirth': headOfBusinessDateOfBirth,
      'headOfBusinessPhoneNumber': headOfBusinessPhoneNumber,
      'headOfBusinessEmail': headOfBusinessEmail,
      'headOfBusinessGender': headOfBusinessGender,
      'monthlyTurnOver': monthlyTurnOver,
      'addressVerified': addressVerified,
      'addressVerifiedDate': addressVerifiedDate,
      'addressVerifiedTimestamp': addressVerifiedTimestamp,
      'addressVerifiedByAgent': addressVerifiedByAgent,
      'applicationCreatedByAgent': applicationCreatedByAgent,
    };
  }

  factory ApplicationModel.fromMap(Map<String, dynamic> map) {
    return ApplicationModel(
      title: map['title'] as String,
      firstName: map['firstName'] as String,
      middleName:
          map['middleName'] != null ? map['middleName'] as String : null,
      lastName: map['lastName'] as String,
      dateOfBirth: map['dateOfBirth'] as String,
      stateOfOrigin: map['stateOfOrigin'] as String,
      localGovernmentOfOrigin: map['localGovernmentOfOrigin'] as String,
      maritalStatus: map['maritalStatus'] as String,
      gender: map['gender'] as String,
      email: map['email'] as String,
      phone: map['phone'] as String,
      disability: map['disability'] as String,
      bankVerificationNumber: map['bankVerificationNumber'] as String,
      street: map['street'] != null ? map['street'] as String : null,
      streetTwo: map['streetTwo'] != null ? map['streetTwo'] as String : null,
      city: map['city'] as String,
      state: map['state'] as String,
      utilityBill:
          map['utilityBill'] != null ? map['utilityBill'] as String : null,
      idCard: map['idCard'] != null ? map['idCard'] as String : null,
      passport: map['passport'] != null ? map['passport'] as String : null,
      zipCode: map['zipCode'] != null ? map['zipCode'] as String : null,
      localGovernmentOfResidence: map['localGovernmentOfResidence'] as String,
      type: map['type'] != null ? map['type'] as String : null,
      category: map['category'] as String,
      placeOfWork:
          map['placeOfWork'] != null ? map['placeOfWork'] as String : null,
      businessName: map['businessName'] as String,
      businessRegistrationCacNumber:
          map['businessRegistrationCacNumber'] != null
              ? map['businessRegistrationCacNumber'] as String
              : null,
      businessRegistrationTinNumber:
          map['businessRegistrationTinNumber'] != null
              ? map['businessRegistrationTinNumber'] as String
              : null,
      businessAddressOne: map['businessAddressOne'] != null
          ? map['businessAddressOne'] as String
          : null,
      businessAddressTwo: map['businessAddressTwo'] != null
          ? map['businessAddressTwo'] as String
          : null,
      businessCity:
          map['businessCity'] != null ? map['businessCity'] as String : null,
      businessState: map['businessState'] as String,
      lengthOfStay:
          map['lengthOfStay'] != null ? map['lengthOfStay'] as String : null,
      ownedOrRented:
          map['ownedOrRented'] != null ? map['ownedOrRented'] as String : null,
      localGovernmentOfBusinessOperation:
          map['localGovernmentOfBusinessOperation'] as String,
      staffStrength: map['staffStrength'] as String,
      yearsOfBusinessOperation: map['yearsOfBusinessOperation'] as String,
      businessSector: map['businessSector'] as String,
      annualTurnover: map['annualTurnover'] != null
          ? map['annualTurnover'] as String
          : null,
      amountRequested: map['amountRequested'] as int,
      amountApproved:
          map['amountApproved'] != null ? map['amountApproved'] as int : null,
      amountAccepted:
          map['amountAccepted'] != null ? map['amountAccepted'] as int : null,
      amountPaid: map['amountPaid'] != null ? map['amountPaid'] as int : null,
      totalLoan: map['totalLoan'] != null ? map['totalLoan'] as int : null,
      comments: map['comments'] != null ? map['comments'] as String : null,
      acceptTermsAndCondition: map['acceptTermsAndCondition'] != null
          ? map['acceptTermsAndCondition'] as bool
          : null,
      acceptInformationIsAccurate: map['acceptInformationIsAccurate'] != null
          ? map['acceptInformationIsAccurate'] as bool
          : null,
      businessPlan:
          map['businessPlan'] != null ? map['businessPlan'] as String : null,
      bankStatement:
          map['bankStatement'] != null ? map['bankStatement'] as String : null,
      creator: map['creator'] != null ? map['creator'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
      id: map['id'] != null ? map['id'] as String : null,
      interest: map['interest'] != null ? map['interest'] as String : null,
      duration: map['duration'] != null ? map['duration'] as int : null,
      uid: map['uid'] != null ? map['uid'] as String : null,
      accountNumber:
          map['accountNumber'] != null ? map['accountNumber'] as String : null,
      bankName: map['bankName'] != null ? map['bankName'] as String : null,
      bankAccountName: map['bankAccountName'] != null
          ? map['bankAccountName'] as String
          : null,
      ward: map['ward'] != null ? map['ward'] as String : null,
      businessType:
          map['businessType'] != null ? map['businessType'] as String : null,
      cropProduct:
          map['cropProduct'] != null ? map['cropProduct'] as String : null,
      businessWard:
          map['businessWard'] != null ? map['businessWard'] as String : null,
      localGovernmentOfBusiness: map['localGovernmentOfBusiness'] != null
          ? map['localGovernmentOfBusiness'] as String
          : null,
      subType: map['subType'] as String,
      headOfBusinessLastName: map['headOfBusinessLastName'] as String,
      headOfBusinessFirstName: map['headOfBusinessFirstName'] as String,
      headOfBusinessDateOfBirth: map['headOfBusinessDateOfBirth'] as String,
      headOfBusinessPhoneNumber: map['headOfBusinessPhoneNumber'] as String,
      headOfBusinessEmail: map['headOfBusinessEmail'] as String,
      headOfBusinessGender: map['headOfBusinessGender'] as String,
      monthlyTurnOver: map['monthlyTurnOver'] as int,
      addressVerified: map['addressVerified'] != null
          ? map['addressVerified'] as bool
          : null,
      addressVerifiedDate: map['addressVerifiedDate'] != null
          ? map['addressVerifiedDate'] as String
          : null,
      addressVerifiedTimestamp: map['addressVerifiedTimestamp'] != null
          ? map['addressVerifiedTimestamp'] as int
          : null,
      addressVerifiedByAgent: map['addressVerifiedByAgent'] != null
          ? map['addressVerifiedByAgent'] as String
          : null,
      applicationCreatedByAgent: map['applicationCreatedByAgent'] != null
          ? map['applicationCreatedByAgent'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ApplicationModel.fromJson(String source) =>
      ApplicationModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ApplicationModel(title: $title, firstName: $firstName, middleName: $middleName, lastName: $lastName, dateOfBirth: $dateOfBirth, stateOfOrigin: $stateOfOrigin, localGovernmentOfOrigin: $localGovernmentOfOrigin, maritalStatus: $maritalStatus, gender: $gender, email: $email, phone: $phone, disability: $disability, bankVerificationNumber: $bankVerificationNumber, street: $street, streetTwo: $streetTwo, city: $city, state: $state, utilityBill: $utilityBill, idCard: $idCard, passport: $passport, zipCode: $zipCode, localGovernmentOfResidence: $localGovernmentOfResidence, type: $type, category: $category, placeOfWork: $placeOfWork, businessName: $businessName, businessRegistrationCacNumber: $businessRegistrationCacNumber, businessRegistrationTinNumber: $businessRegistrationTinNumber, businessAddressOne: $businessAddressOne, businessAddressTwo: $businessAddressTwo, businessCity: $businessCity, businessState: $businessState, lengthOfStay: $lengthOfStay, ownedOrRented: $ownedOrRented, localGovernmentOfBusinessOperation: $localGovernmentOfBusinessOperation, staffStrength: $staffStrength, yearsOfBusinessOperation: $yearsOfBusinessOperation, businessSector: $businessSector, annualTurnover: $annualTurnover, amountRequested: $amountRequested, amountApproved: $amountApproved, amountAccepted: $amountAccepted, amountPaid: $amountPaid, totalLoan: $totalLoan, comments: $comments, acceptTermsAndCondition: $acceptTermsAndCondition, acceptInformationIsAccurate: $acceptInformationIsAccurate, businessPlan: $businessPlan, bankStatement: $bankStatement, creator: $creator, status: $status, id: $id, interest: $interest, duration: $duration, uid: $uid, accountNumber: $accountNumber, bankName: $bankName, bankAccountName: $bankAccountName, ward: $ward, businessType: $businessType, cropProduct: $cropProduct, businessWard: $businessWard, localGovernmentOfBusiness: $localGovernmentOfBusiness, subType: $subType, headOfBusinessLastName: $headOfBusinessLastName, headOfBusinessFirstName: $headOfBusinessFirstName, headOfBusinessDateOfBirth: $headOfBusinessDateOfBirth, headOfBusinessPhoneNumber: $headOfBusinessPhoneNumber, headOfBusinessEmail: $headOfBusinessEmail, headOfBusinessGender: $headOfBusinessGender, monthlyTurnOver: $monthlyTurnOver, addressVerified: $addressVerified, addressVerifiedDate: $addressVerifiedDate, addressVerifiedTimestamp: $addressVerifiedTimestamp, addressVerifiedByAgent: $addressVerifiedByAgent, applicationCreatedByAgent: $applicationCreatedByAgent)';
  }

  @override
  bool operator ==(covariant ApplicationModel other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.firstName == firstName &&
        other.middleName == middleName &&
        other.lastName == lastName &&
        other.dateOfBirth == dateOfBirth &&
        other.stateOfOrigin == stateOfOrigin &&
        other.localGovernmentOfOrigin == localGovernmentOfOrigin &&
        other.maritalStatus == maritalStatus &&
        other.gender == gender &&
        other.email == email &&
        other.phone == phone &&
        other.disability == disability &&
        other.bankVerificationNumber == bankVerificationNumber &&
        other.street == street &&
        other.streetTwo == streetTwo &&
        other.city == city &&
        other.state == state &&
        other.utilityBill == utilityBill &&
        other.idCard == idCard &&
        other.passport == passport &&
        other.zipCode == zipCode &&
        other.localGovernmentOfResidence == localGovernmentOfResidence &&
        other.type == type &&
        other.category == category &&
        other.placeOfWork == placeOfWork &&
        other.businessName == businessName &&
        other.businessRegistrationCacNumber == businessRegistrationCacNumber &&
        other.businessRegistrationTinNumber == businessRegistrationTinNumber &&
        other.businessAddressOne == businessAddressOne &&
        other.businessAddressTwo == businessAddressTwo &&
        other.businessCity == businessCity &&
        other.businessState == businessState &&
        other.lengthOfStay == lengthOfStay &&
        other.ownedOrRented == ownedOrRented &&
        other.localGovernmentOfBusinessOperation ==
            localGovernmentOfBusinessOperation &&
        other.staffStrength == staffStrength &&
        other.yearsOfBusinessOperation == yearsOfBusinessOperation &&
        other.businessSector == businessSector &&
        other.annualTurnover == annualTurnover &&
        other.amountRequested == amountRequested &&
        other.amountApproved == amountApproved &&
        other.amountAccepted == amountAccepted &&
        other.amountPaid == amountPaid &&
        other.totalLoan == totalLoan &&
        other.comments == comments &&
        other.acceptTermsAndCondition == acceptTermsAndCondition &&
        other.acceptInformationIsAccurate == acceptInformationIsAccurate &&
        other.businessPlan == businessPlan &&
        other.bankStatement == bankStatement &&
        other.creator == creator &&
        other.status == status &&
        other.id == id &&
        other.interest == interest &&
        other.duration == duration &&
        other.uid == uid &&
        other.accountNumber == accountNumber &&
        other.bankName == bankName &&
        other.bankAccountName == bankAccountName &&
        other.ward == ward &&
        other.businessType == businessType &&
        other.cropProduct == cropProduct &&
        other.businessWard == businessWard &&
        other.localGovernmentOfBusiness == localGovernmentOfBusiness &&
        other.subType == subType &&
        other.headOfBusinessLastName == headOfBusinessLastName &&
        other.headOfBusinessFirstName == headOfBusinessFirstName &&
        other.headOfBusinessDateOfBirth == headOfBusinessDateOfBirth &&
        other.headOfBusinessPhoneNumber == headOfBusinessPhoneNumber &&
        other.headOfBusinessEmail == headOfBusinessEmail &&
        other.headOfBusinessGender == headOfBusinessGender &&
        other.monthlyTurnOver == monthlyTurnOver &&
        other.addressVerified == addressVerified &&
        other.addressVerifiedDate == addressVerifiedDate &&
        other.addressVerifiedTimestamp == addressVerifiedTimestamp &&
        other.addressVerifiedByAgent == addressVerifiedByAgent &&
        other.applicationCreatedByAgent == applicationCreatedByAgent;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        firstName.hashCode ^
        middleName.hashCode ^
        lastName.hashCode ^
        dateOfBirth.hashCode ^
        stateOfOrigin.hashCode ^
        localGovernmentOfOrigin.hashCode ^
        maritalStatus.hashCode ^
        gender.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        disability.hashCode ^
        bankVerificationNumber.hashCode ^
        street.hashCode ^
        streetTwo.hashCode ^
        city.hashCode ^
        state.hashCode ^
        utilityBill.hashCode ^
        idCard.hashCode ^
        passport.hashCode ^
        zipCode.hashCode ^
        localGovernmentOfResidence.hashCode ^
        type.hashCode ^
        category.hashCode ^
        placeOfWork.hashCode ^
        businessName.hashCode ^
        businessRegistrationCacNumber.hashCode ^
        businessRegistrationTinNumber.hashCode ^
        businessAddressOne.hashCode ^
        businessAddressTwo.hashCode ^
        businessCity.hashCode ^
        businessState.hashCode ^
        lengthOfStay.hashCode ^
        ownedOrRented.hashCode ^
        localGovernmentOfBusinessOperation.hashCode ^
        staffStrength.hashCode ^
        yearsOfBusinessOperation.hashCode ^
        businessSector.hashCode ^
        annualTurnover.hashCode ^
        amountRequested.hashCode ^
        amountApproved.hashCode ^
        amountAccepted.hashCode ^
        amountPaid.hashCode ^
        totalLoan.hashCode ^
        comments.hashCode ^
        acceptTermsAndCondition.hashCode ^
        acceptInformationIsAccurate.hashCode ^
        businessPlan.hashCode ^
        bankStatement.hashCode ^
        creator.hashCode ^
        status.hashCode ^
        id.hashCode ^
        interest.hashCode ^
        duration.hashCode ^
        uid.hashCode ^
        accountNumber.hashCode ^
        bankName.hashCode ^
        bankAccountName.hashCode ^
        ward.hashCode ^
        businessType.hashCode ^
        cropProduct.hashCode ^
        businessWard.hashCode ^
        localGovernmentOfBusiness.hashCode ^
        subType.hashCode ^
        headOfBusinessLastName.hashCode ^
        headOfBusinessFirstName.hashCode ^
        headOfBusinessDateOfBirth.hashCode ^
        headOfBusinessPhoneNumber.hashCode ^
        headOfBusinessEmail.hashCode ^
        headOfBusinessGender.hashCode ^
        monthlyTurnOver.hashCode ^
        addressVerified.hashCode ^
        addressVerifiedDate.hashCode ^
        addressVerifiedTimestamp.hashCode ^
        addressVerifiedByAgent.hashCode ^
        applicationCreatedByAgent.hashCode;
  }
}
