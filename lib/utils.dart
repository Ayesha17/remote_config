import 'dart:convert';
import 'dart:math';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:remote_config/TabBarEntity.dart';

class Utils{
Future<TabBarEntity> parseJsonConfig(String rawJson) async {
  final Map<String, dynamic> parsed = await compute(decodeJsonWithCompute, rawJson);
  final userEntity = TabBarEntity.fromJson(parsed);
  return userEntity;
}

static Map<String, dynamic> decodeJsonWithCompute(String rawJson) {
  debugPrint("x $rawJson");
return jsonDecode(rawJson);
}
}