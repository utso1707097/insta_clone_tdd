import 'package:flutter/material.dart';
import 'package:instagram_clone_tdd/features/presentation/pages/profile/widget/profile_form_widget.dart';
import 'package:instagram_clone_tdd/utils/colors.dart';
import 'package:instagram_clone_tdd/utils/helper.dart';

class UpdatePostPage extends StatelessWidget {
  const UpdatePostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: primaryColor),
        backgroundColor: backGroundColor,
        title: Text(
          "Edit Post",
          style: TextStyle(color: primaryColor),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.done,color: blueColor,size: 28,),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  shape: BoxShape.circle,
                ),
              ),
              sizeVer(10),
              Text(
                "UserName",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              sizeVer(10),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: secondaryColor,
                ),
              ),
              sizeVer(10),
              ProfileFormWidget(
                title: "Description",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
