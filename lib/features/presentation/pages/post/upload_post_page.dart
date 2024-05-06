import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';

class UploadPostPage extends StatelessWidget {
  const  UploadPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: secondaryColor.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
            child: Icon(Icons.upload,color: primaryColor,size: 40,)
        ),
      )
    );
  }
}
