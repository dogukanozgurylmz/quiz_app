import 'package:flutter/material.dart';
import 'package:quizzapp/ui/text_style.dart';

import '../widgets/app_bar_quizzy.dart';
import '../widgets/background.dart';
import '../widgets/categories/categories.dart';
import '../widgets/search_bar.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          SafeArea(
            child: Column(
              children: [
                const AppBarQuizzy(),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Merhaba, Xxxx",
                      style: UiTextStyle.instance.hello,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, top: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Bilginizi test edelim",
                      style: UiTextStyle.instance.letsTestYourKnowledge,
                    ),
                  ),
                ),
                const SearchBar(),
              ],
            ),
          ),
          const Categories(),
        ],
      ),
    );
  }
}
