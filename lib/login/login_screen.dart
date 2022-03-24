
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supplychainfinal/controllers/login_screen_controller.dart';
import 'package:supplychainfinal/login/components/login_form_widget.dart';
import 'package:supplychainfinal/utility/colors.dart';
import 'package:supplychainfinal/utility/responsive.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 3,
                // and it takes 1/6 part of the screen
                child: Icon(
                  Icons.lock_outlined,
                  color: primaryColor,
                  size: 150,
                ),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Login",
                            style: Theme.of(context).textTheme.headline6,
                          )),
                    ),
                    SizedBox(height: defaultPadding),
                    LoginFormWidget(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
