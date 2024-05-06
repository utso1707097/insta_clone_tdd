import 'package:flutter/material.dart';
import 'package:instagram_clone_tdd/features/presentation/pages/search/widget/search_widget.dart';
import 'package:instagram_clone_tdd/utils/helper.dart';

import '../../../../utils/colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backGroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchWidget(controller: _controller),
                sizeVer(10),
                GridView.builder(
                  itemCount: 32,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      height: 100,
                      color: secondaryColor,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
