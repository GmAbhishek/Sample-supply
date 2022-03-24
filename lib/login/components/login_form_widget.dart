
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supplychainfinal/controllers/login_screen_controller.dart';
import 'package:supplychainfinal/utility/colors.dart';
import 'package:supplychainfinal/utility/widget/button_widget.dart';
import 'package:supplychainfinal/utility/widget/progress_widget.dart';
import 'package:supplychainfinal/utility/widget/textform_widget.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final loginCtrl = Get.put(LoginScreenController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormWidget(
            text: 'Username',
            hintText: 'Enter Username',
            preIcon: Icons.person,
            errorText: 'Invalid Username',
            contorller: loginCtrl.emailtxtController,

          ),
          TextFormWidget(
            text: 'Password',
            hintText: 'Enter Password',
            preIcon: Icons.password,
            errorText: 'Invalid Password',
            contorller: loginCtrl.passwordController,
          ),

            GetBuilder<LoginScreenController>(
    builder: (_) {
    return loginCtrl.loading == true
    ? const ProgressBarWidget()
          :ButtonWidget(
              text: 'Sign In',
              tColor: Colors.white,
              bColor: primaryColor,
              press: () {

                loginCtrl.VerifyLogin(loginCtrl.emailtxtController.text,loginCtrl.passwordController.text);
               // Navigator.pushNamed(context, '/dashboard');
              });
    }),
        ],
      ),
    );
  }
}
