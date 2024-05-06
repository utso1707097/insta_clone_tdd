import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone_tdd/utils/colors.dart';

import '../../../../utils/helper.dart';
import '../../widgets/button_container_widget.dart';
import '../../widgets/form_container_widget.dart';
import 'sign_in_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
            sizeVer(15),
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 60,
                      width: 60,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Image.asset('assets/images/profile_default.png'),
                  ),
                  Positioned(
                      right: -10,
                      bottom: -15,
                      child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.add_a_photo,color: blueColor,),
                  ))
                ],
              ),
            ),
            sizeVer(30),
            FormContainerWidget(
              // controller: _emailController,
              hintText: "Enter your username",
            ),
            sizeVer(15),
            FormContainerWidget(
              // controller: _emailController,
              hintText: "Enter your email",
            ),
            sizeVer(15),
            FormContainerWidget(
              // controller: _passwordController,
              hintText: "Password",
              isPasswordField: true,
            ),
            sizeVer(15),
            FormContainerWidget(
              // controller: _emailController,
              hintText: "Enter your bio",
            ),
            sizeVer(15),
            ButtonContainerWidget(
              color: blueColor,
              text: "Sign Up",
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
                  "Already have an acoount? ",
                  style: TextStyle(color: primaryColor),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.pushNamedAndRemoveUntil(context, PageConst.signUpPage, (route) => false);
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => SignInPage()), (route) => false);
                  },
                  child: Text(
                    "Sign In.",
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
