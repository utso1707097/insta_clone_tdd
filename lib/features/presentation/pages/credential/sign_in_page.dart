import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone_tdd/utils/colors.dart';

import '../../../../utils/helper.dart';
import '../../widgets/button_container_widget.dart';
import '../../widgets/form_container_widget.dart';
import 'sign_up_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(),
              flex: 2,
            ),
            Center(child: SvgPicture.asset("assets/images/ic_instagram.svg",color: primaryColor,)),
            sizeVer(30),
            FormContainerWidget(
              // controller: _emailController,
              hintText: "Email",
            ),
            sizeVer(15),
            FormContainerWidget(
              // controller: _passwordController,
              hintText: "Password",
              isPasswordField: true,
            ),
            sizeVer(15),
            ButtonContainerWidget(
              color: blueColor,
              text: "Sign In",
              onTapListener: () {
                // _signInUser();
              },
            ),
            sizeVer(10),
            Flexible(
              child: Container(),
              flex: 2,
            ),
            Divider(
              color: secondaryColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have and account? ",
                  style: TextStyle(color: primaryColor),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.pushNamedAndRemoveUntil(context, PageConst.signUpPage, (route) => false);
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => SignUpPage()), (route) => false);
                  },
                  child: Text(
                    "Sign Up.",
                    style: TextStyle(fontWeight: FontWeight.bold, color: primaryColor),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
