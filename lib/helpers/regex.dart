import "../global.dart";

/// return an error message if value does not pass the validation
///validation requires val: not equal null
String? isNotNull(String? val) {
  if (val == null) {
    return "can't be left empty ";
  }
  return val.toString().isNotEmpty ? null : "can't be left empty ";
}

/// return an error message if value does not pass the validation
///validation requires val: not equal null
String? isValidCardExpireYear(String? val) {
  if (isNotNull(val) == null) {
    final year = DateTime.now().year - 2000;
    if (int.parse(val ?? "") < year) return "valid year is required";
    return null;
  }
  return isNotNull(val);
}

///
///return an error message if value does not pass the validation
///validation requires val: not equal null and length must be more than 7
///characters
///
String? isPassword(String? val) {
  return (val.toString().isNotEmpty && val.toString().length > 7)
      ? null
      : "Password must be up to 8 characters";
}

///  return an error message if value does not pass the validation
/// validation requires val: not equal null, must contain @ char, must contain
///  dot(".") and length must be more than 4 characters
String? isEmail(String? val) {
  final RegExp reg =
      RegExp(r"^([a-zA-Z\d\.-]+)@([a-z\d-]+)\.([a-z]{2,8})(\.[a-z]{2,8})?$");

  return reg.hasMatch((val ?? "").trim()) ? null : "enter a valid email ";
}

/// return an error message if value does not pass the validation
/// validation requires val: not equal null, must contain @ char, must contain
/// dot(".") and length must be more than 4 characters
String? isEmailOrTel(String? val) {
  final RegExp reg = RegExp(
      r"^([a-zA-Z\d\.-]+)@([a-z\d-]+)\.([a-z]{2,8})(\.[a-z]{2,8})?$|^\+[0-9]{8,17}$");

  return reg.hasMatch(val ?? "")
      ? null
      : "enter a valid email or telephone number";
}

String? isTel(String? val) {
  final RegExp reg = RegExp(r"^\+[0-9]{8,16}$");
  return reg.hasMatch(val ?? "")
      ? null
      : "invalid mobile number e.g +234 473 3763 373";
}

/// return an error message if value does not pass the validation
///validation requires val: not equal null and length must be more or equal to 4 characters
String? isPin(String val) {
  final RegExp reg = RegExp(r"^[0-9]{4}$");
  return reg.hasMatch(val) ? null : "Pin must be a 4 digit number";
}

String? isOtp(String val) {
  final RegExp reg = RegExp(r"^[0-9]{6}$");
  return reg.hasMatch(val) ? null : "otp must be a 6 digit number";
}

/// return an error message if value does not pass the validation
///validation requires val: not equal null and length must be more or equal to 10 characters
String? isAccountNumber(String val) {
  final RegExp reg = RegExp(r"^[0-9]{10}$");
  return reg.hasMatch(val) ? null : "Purse number must be a 10 digit number";
}

/// return an error message if value does not pass the validation
///validation requires val: not equal null and length must be more or equal to 10 characters
// ignore: missing_return
String? isMoney(String value, num min, num max, {String symbol = "NGN"}) {
  try {
    if (value.isEmpty) return "must not be less than ${min.toMoney()} $symbol";
    final val =
        int.parse(value.substring(0, value.length - 3).replaceAll(",", ""));
    if (val < min) return "must not be less than ${min.toMoney()} $symbol";
    if (val > max) return "must not be more than a ${max.toMoney()} $symbol";
    return null;
  } catch (e) {
    debugPrint(e.toString());
  }
  return "";
}

/// return an error message if value does not pass the validation
///validation requires val: not equal null and the value must a date in this format (DD-MM-YYYY)
String? isDate(val) {
  try {
    assert(val != null);
    final List<String> strArr =
        val.toString().trim().replaceAll(" ", "").split("-");
    final day = strArr[0].trim();
    final month = strArr[1].trim();
    final year = strArr[2].trim();

    assert(day.length == 2 && month.length == 2 && year.length == 4);
    final dVal = int.parse(day);
    final mVal = int.parse(month);

    assert(dVal != 0 && dVal <= 31);
    assert(mVal != 0 && mVal <= 12);
  } catch (e) {
    return "Date must be in this format (DD-MM-YYYY)";
  }
  return null;
}
