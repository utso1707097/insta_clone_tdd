import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone_tdd/features/presentation/pages/post/comment/comment_page.dart';
import 'package:instagram_clone_tdd/utils/colors.dart';
import 'package:instagram_clone_tdd/utils/helper.dart';
import 'package:instagram_clone_tdd/utils/page_const.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../post/update_post_page.dart';

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
                GestureDetector(
                  onTap: () {
                    _openBottomModalSheet(context);
                    //Navigator.push(context, MaterialPageRoute(builder: (context) =>  UpdatePostPage()));
                  },
                  child: Icon(
                    Icons.more_vert,
                    color: primaryColor,
                  ),
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CommentPage()));
                      },
                      child: Icon(
                        MdiIcons.chatOutline,
                        color: primaryColor,
                      ),
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
              style:
                  TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
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
                  style: TextStyle(color: primaryColor),
                ),
              ],
            ),
            sizeVer(10),
            Text(
              "View all 10 comments",
              style: TextStyle(
                color: darkGreyColor,
              ),
            ),
            sizeVer(10),
            Text(
              "08/05/22",
              style: TextStyle(
                color: darkGreyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _openBottomModalSheet(BuildContext context) {
    return showModalBottomSheet(context: context, builder: (context) {
      return Container(
        height: 150,
        decoration: BoxDecoration(color: backGroundColor.withOpacity(.8)),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "More Options",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: primaryColor),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Divider(
                  thickness: 1,
                  color: secondaryColor,
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: GestureDetector(
                    // onTap: _deletePost,
                    child: Text(
                      "Delete Post",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: primaryColor),
                    ),
                  ),
                ),
                sizeVer(7),
                Divider(
                  thickness: 1,
                  color: secondaryColor,
                ),
                sizeVer(7),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.pushNamed(context, PageConst.updatePostPage, arguments: post);
                      Navigator.pushNamed(context, PageConst.updatePostPage);
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => UpdatePostPage()));

                    },
                    child: Text(
                      "Update Post",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: primaryColor),
                    ),
                  ),
                ),
                sizeVer(7),
              ],
            ),
          ),
        ),
      );
    });
  }
}
