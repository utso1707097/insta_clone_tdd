import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/colors.dart';

class ActivityPage extends StatelessWidget {
  const  ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: Text("Activity",style: TextStyle(color: primaryColor),),
      ),
    );
  }
}
