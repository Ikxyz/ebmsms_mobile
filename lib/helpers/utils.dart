import "dart:math";

import "../global.dart";

double getWidth(BuildContext context, [int percent = 100]) {
  return (percent / 100) * MediaQuery.of(context).size.width;
}

double getHeight(BuildContext context, [int percent = 100]) {
  return (percent / 100) * MediaQuery.of(context).size.height;
}

String numberToK(num count) {
  if (count < 1000) return "$count";
  if (count < 1000000) return "${(count * 0.001).floor()}k"; // 1 million
  if (count < 1000000000) return "${(count * 0.000001).floor()}m"; //100 billion
  if (count < 1000000000000) {
    return "${(count * 0.00000001).floor()}b";
  } // 1 trillion

  if (count < 10000000) return "${(count * 0.000001).floor()}m";
  if (count < 100000000) return "${(count * 0.0000001).floor()}b";
  if (count < 1000000000) return "${(count * 0.00000001).floor()}b";
  if (count < 10000000000) return "${(count * 0.000000001).floor()}t";
  if (count < 100000000000) return "${(count * 0.0000000001).floor()}t";

  return "${(count * 0.0000000001).floor()}z";
}

canDebugPrint(arg) {
  debugPrint("AppLog: $arg");
}

int generateNumber([int length = 10]) {
  final random = Random();
  String number = "1";

  while (number.length < length) {
    number += random.nextInt(length).toString();
  }

  return int.parse(number);
}

String generateId([String? chars, int? length]) {
  chars ??= "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0987654321";

  length ??= 18;

  String id = "";
  int count = 0;
  final rad = Random();

  while (count <= length) {
    final index = rad.nextInt(length);
    id += chars[index];
    count += 1;
  }

  return id;
}


showSankBar(String text, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}
