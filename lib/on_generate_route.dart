import 'package:flutter/material.dart';
import 'package:instagram_clone_tdd/features/presentation/pages/profile/edit_profile_page.dart';

import 'features/presentation/pages/credential/sign_in_page.dart';
import 'features/presentation/pages/credential/sign_up_page.dart';
import 'features/presentation/pages/post/comment/comment_page.dart';
import 'features/presentation/pages/post/update_post_page.dart';
import 'utils/page_const.dart';

class OnGenerateRoute {
  static Route<dynamic>? route(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case PageConst.editProfilePage:
        {
          return routeBuilder(EditProfilePage());
        }
      case PageConst.updatePostPage:
        {
          return routeBuilder(UpdatePostPage());
        }
      case PageConst.commentPage:
        {
          return routeBuilder(CommentPage());
        }
      case PageConst.signInPage:
        {
          return routeBuilder(SignInPage());
        }
      case PageConst.signUpPage:
        {
          return routeBuilder(SignUpPage());
        }
      case PageConst.signUpPage:
        {
          return routeBuilder(SignUpPage());
        }
      default:
        {
          NoPageFound();
        }
    }
  }
}

dynamic routeBuilder(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}

class NoPageFound extends StatelessWidget {
  const NoPageFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page not found"),
      ),
      body: Center(
        child: Text("Page not found"),
      ),
    );
  }
}
