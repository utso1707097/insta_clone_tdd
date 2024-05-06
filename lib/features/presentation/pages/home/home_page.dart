import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone_tdd/utils/colors.dart';
import 'package:instagram_clone_tdd/utils/helper.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        appBar: AppBar(
          backgroundColor: backGroundColor,
          title: SvgPicture.asset(
            "assets/images/ic_instagram.svg",
            color: primaryColor,
            height: 32,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  MdiIcons.facebookMessenger,
                  color: primaryColor,
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                      sizeHor(10),
                      Text(
                        "Username",
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.more_vert,
                    color: primaryColor,
                  ),
                ],
              ),
              sizeVer(10),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.30,
                color: secondaryColor,
              ),
              sizeVer(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: primaryColor,
                      ),
                      sizeHor(10),
                      Icon(
                        MdiIcons.messageReplyTextOutline,
                        color: primaryColor,
                      ),
                      sizeHor(10),
                      Icon(
                        MdiIcons.send,
                        color: primaryColor,
                      ),
                      sizeHor(10),
                    ],
                  ),
                  Icon(
                    Icons.bookmark_border,
                    color: primaryColor,
                  )
                ],
              ),
              sizeVer(10),
              Text(
                "34 likes",
                style: TextStyle(
                    color: primaryColor, fontWeight: FontWeight.bold),
              ),
              sizeVer(10),
              Row(
                children: [
                  Text(
                    "Username",
                    style: TextStyle(
                        color: primaryColor, fontWeight: FontWeight.bold),
                  ),
                  sizeHor(10),
                  Text(
                    "Some description",
                    style: TextStyle(
                        color: primaryColor
                    ),
                  ),
                ],
              ),
              sizeVer(10),
              Text(
                "View all 10 comments",
                style: TextStyle(
                    color: darkGreyColor,),
              ),
              sizeVer(10),
              Text(
                "08/05/22",
                style: TextStyle(
                  color: darkGreyColor,),
              ),
            ],
          ),
        ));
  }
}
