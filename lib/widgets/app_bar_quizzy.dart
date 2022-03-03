import 'package:flutter/material.dart';

class AppBarQuizzy extends StatelessWidget {
  const AppBarQuizzy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.white,
          ),
          const CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Icon(
              Icons.account_circle_rounded,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}