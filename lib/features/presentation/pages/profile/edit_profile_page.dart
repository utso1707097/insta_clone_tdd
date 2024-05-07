import 'package:flutter/material.dart';
import 'package:instagram_clone_tdd/utils/colors.dart';

import '../../../../utils/helper.dart';
import 'widget/profile_form_widget.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: Text("Edit Profile",style: TextStyle(color: Colors.white),),
        leading:  GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.close,
              size: 32,
              color: Colors.white,
            )),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.done, color: blueColor,size: 32,),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  // child: ClipRRect(
                  //   borderRadius: BorderRadius.circular(50),
                  //   child: profileWidget(imageUrl: widget.currentUser.profileUrl, image: _image),
                  // ),
                ),
              ),
              sizeVer(15),
              Center(
                child: GestureDetector(
                  // onTap: selectImage,
                  child: Text(
                    "Change profile photo",
                    style: TextStyle(color: blueColor, fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              sizeVer(15),
              ProfileFormWidget(title: "Name", ),
              sizeVer(15),
              ProfileFormWidget(title: "Username",),
              sizeVer(15),
              ProfileFormWidget(title: "Website",),
              sizeVer(15),
              ProfileFormWidget(title: "Bio", ),
              sizeVer(10),
              // _isUpdating == true?Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text("Please wait...", style: TextStyle(color: Colors.white),),
              //     sizeHor(10),
              //     CircularProgressIndicator()
              //   ],
              // ) : Container(width: 0, height: 0,)
            ],
          ),
        ),
      ),
    );
  }
}
