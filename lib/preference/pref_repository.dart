import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:supplychainfinal/modals/login_screen_response.dart';
import 'package:supplychainfinal/preference/const.dart';




class PrefRepository {
  Future<SharedPreferences> _getPref() => SharedPreferences.getInstance();
  final _const = PrefConst();

  clearPreferences() async {
    (await _getPref()).clear();
  }

  saveUserData(Data? value) async =>
      (await _getPref()).setString(_const.prefUserData,
          value != null ? json.encode(value) : "");

  Future<Data?> getUserPreferenceData() async {
    final data = (await _getPref()).getString(_const.prefUserData);
    if (data != null && data.isNotEmpty) {
      return Data.fromJson(json.decode(data));
    } else {
      return null;
    }
  }

}
