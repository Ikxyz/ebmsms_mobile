import "dart:convert";

import "package:edo_jobs_portal/global.dart";
import 'package:edo_jobs_portal/helpers/utils.dart';

enum LogType { network, input, failed, runtime, info }

class Log {
  String message;
  int code = 400;
  LogType logType;
  final bool canDebugPrint = debug;

  Log(this.message, {this.code = 400, this.logType = LogType.info});

  Log log() {
    if (canDebugPrint) {
      debugPrint("Log-$code: $message");
    }
    return this;
  }

  Color color() {
    if (logType == LogType.failed) return Colors.red;
    if (logType == LogType.network) return Colors.green;

    return Colors.yellow;
  }

  IconData icon() {
    if (logType == LogType.failed) return Icons.alarm;
    if (logType == LogType.network) return Icons.cancel;

    return Icons.ac_unit;
  }

  Log show(BuildContext context) {
    showSankBar(message, context);
    return this;
  }

  Log copyWith({
    String? message,
    int? code,
    bool? canDebugPrint,
  }) {
    return Log(message ?? this.message, code: code ?? this.code);
  }

  Map<String, dynamic> toMap() {
    return {
      "message": message,
      "code": code,
      "canDebugPrint": canDebugPrint,
    };
  }

  factory Log.fromMap(Map<String, dynamic> map) {
    return Log(map["message"], code: map["code"]);
  }

  factory Log.fromObject(Object? obj) {
    // if (obj is Null) return Log("Unknown Error Occurred", code: 400);

    if (obj is String) {
      return Log(obj.toString(), code: 400);
    }
    if (obj is Log) {
      return obj;
    }
    return Log(obj.toString(), code: 400);
  }

  String toJson() => json.encode(toMap());

  factory Log.fromJson(String source) => Log.fromMap(json.decode(source));

  @override
  String toString() =>
      "Log(message: $message, code: $code, canDebugPrint: $canDebugPrint)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Log &&
        other.message == message &&
        other.code == code &&
        other.canDebugPrint == canDebugPrint;
  }

  @override
  int get hashCode => message.hashCode ^ code.hashCode ^ canDebugPrint.hashCode;
}
