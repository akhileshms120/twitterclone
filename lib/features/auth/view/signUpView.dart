import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:twitter/common/rounded_small_button.dart';

import 'package:twitter/constants/ui_constants.dart';
import 'package:twitter/features/auth/view/login_view.dart';
import 'package:twitter/features/auth/widgets/auth_filed.dart';
import 'package:twitter/theme/app_theme.dart';

import '../../../theme/pallete.dart';

class SignUpView extends StatefulWidget {
   static route()=> MaterialPageRoute( builder: (context) =>SignUpView());
  

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final appbar = UIConstants.appBar();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                AuthField(
                  controller: usernameController,
                  hintText: "Email",
                ),
                const SizedBox(
                  height: 25,
                ),
                AuthField(
                  controller: passwordController,
                  hintText: "Password",
                ),
                const SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: RoundedSmallButton(
                    onTap: () {},
                    label: "Done",
                    backgroundColor: Pallete.blueColor,
                    textColor: Pallete.backgroundColor,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                RichText(
                    text:  TextSpan(
                        text: "Already have an account?",
                        style:const  TextStyle(fontSize: 16),
                        children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap=(){
                           Navigator.push(
                                context,
                                LoginView.route()
                              );
                        },
                          text: " Login",
                          style:
                              const TextStyle(color: Pallete.blueColor, fontSize: 16))
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
