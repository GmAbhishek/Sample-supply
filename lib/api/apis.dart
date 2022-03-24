import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:supplychainfinal/api/utils.dart';
import 'package:supplychainfinal/modals/login_screen_response.dart';
import 'package:supplychainfinal/utility/common.dart';



import 'constants.dart';

class Apis {
  final constant = ApiConstants();
  final utils = ApiUtils();



  Future<LoginScreenResponse?> verifyLogin(String email,String password) async {

    final request = utils.createPostRequest(
        constant.verifyLoginUrl());
    request.body = json.encode({
      constant.parmUserName: email,
      constant.paramPassword: password,

    });

    request.headers.addAll(constant.getHeader());

    printLog(request);
    http.StreamedResponse response = await request.send();

    try {
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        printLog(data);
        return LoginScreenResponse.fromJson(jsonDecode(data));
      } else {
        printLog(response.reasonPhrase);
        return null;
      }
    } catch (e) {
      printLog(e);
      return null;
    }
  }



}
