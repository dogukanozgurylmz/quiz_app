import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzapp/widgets/categories/top_stick.dart';

import '../../models/category.dart';
import 'categoryWidget.dart';


List<Category> categories = [
  Category(
    1,
    "Algoritma",
    "https://rightforeducation.org/wp-content/uploads/2021/05/marketer-algorithm-content-2018.png",
    10,
    4.5,
  ),
  Category(
    2,
    "Flutter",
    "https://yt3.ggpht.com/ytc/AKedOLRt1d4p7bPylasq_66BIC8-k3hkyVjJ2JICQITK=s900-c-k-c0x00ffffff-no-rj",
    5,
    5.0,
  ),
  Category(
    3,
    "Unity",
    "https://mobidictum.biz/wp-content/uploads/2021/03/unity-oyun-yapma-e1616570944428.png",
    7,
    4.9,
  ),
  Category(
    4,
    "JavaScript",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/480px-Unofficial_JavaScript_logo_2.svg.png",
    9,
    4.0,
  ),
  Category(
    5,
    "JavaScript",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/480px-Unofficial_JavaScript_logo_2.svg.png",
    9,
    4.0,
  ),
];

class Categories extends StatefulWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      top: 220,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            const TopStick(),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text("Algoritma"),
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text("Flutter"),
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text("Unity"),
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text("JavaScipt"),
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text("C#"),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    for (var category in categories)
                      CategoryWidget(
                        imageUrl: category.imageUrl,
                        title: category.title,
                        quizLenght: category.quizLenght,
                        rating: category.rating,
                      ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
