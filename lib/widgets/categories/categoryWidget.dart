import 'package:flutter/material.dart';
import 'package:quizzapp/ui/text_style.dart';

class CategoryWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int quizLenght;
  final double rating;

  const CategoryWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.quizLenght,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      margin: const EdgeInsets.only(top: 15),
      width: MediaQuery.of(context).size.width - 70,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          color: Colors.white,
          border: Border.all(
            color: Color(0xff27A9F7),
            width: 2,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.network(
            imageUrl,
            width: 72,
            height: 72,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: UiTextStyle.instance.categoryTitle,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "$quizLenght sınav",
                  style: UiTextStyle.instance.categoryQuizLength,
                  textAlign: TextAlign.left,
                )
              ],
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Text(
                "$rating",
                style: UiTextStyle.instance.categoryRating,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
