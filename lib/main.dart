import 'package:flutter/material.dart';
import 'package:instagram_clone_tdd/features/presentation/pages/credential/sign_up_page.dart';
import 'package:instagram_clone_tdd/features/presentation/pages/main_screen/main_screen.dart';

import 'features/presentation/pages/credential/sign_in_page.dart';
import 'on_generate_route.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: OnGenerateRoute.route,
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      title: "Insta Clone",
      routes: {
        "/": (context) {
          return SignInPage();
        }
      },
      darkTheme: ThemeData.dark(),
    );
  }
}
