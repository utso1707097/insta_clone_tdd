import 'package:flutter/material.dart';
import 'package:instagram_clone_tdd/features/presentation/pages/credential/sign_up_page.dart';
import 'package:instagram_clone_tdd/features/presentation/pages/main_screen/main_screen.dart';

import 'features/presentation/pages/credential/sign_in_page.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Insta Clone",
      darkTheme: ThemeData.dark(),
      home: MainScreen()
    );
  }
}
