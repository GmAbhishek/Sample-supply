import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supplychainfinal/api/apis.dart';
import 'package:supplychainfinal/modals/login_screen_response.dart';
import 'package:supplychainfinal/preference/pref_repository.dart';
import 'package:supplychainfinal/utility/common.dart';



class LoginScreenController extends GetxController {

   LoginScreenResponse? loginScreenResponse;

  bool loading = false;
  TextEditingController emailtxtController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final pref = PrefRepository();


  void toggleLoading() {
    if (loading) {
      loading = false;
    } else {
      loading = true;
    }
    update();
  }



  Future<LoginScreenResponse?> VerifyLogin(String email,String password) async {
    toggleLoading();
    final response = await Apis().verifyLogin(email,password);

    printLog(response);

    if (response != null && response.status!) {
      loginScreenResponse = response;
    //  pref.clearPreferences();
      pref.saveUserData(loginScreenResponse!.data);
     // Get.to(DashboardScreen());

      showSnackbar(response.message!);
    }
    else{
      if (response != null)
      showSnackbar(response.message!);

    }

    toggleLoading();
    update();
    return loginScreenResponse;
  }


}
