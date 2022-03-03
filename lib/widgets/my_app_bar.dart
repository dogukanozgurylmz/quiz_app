import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/meerkat_store.png",
            width: 59,
            height: 59,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.notifications_none_outlined ),
              SizedBox(
                width: 15,
              ),
              //Icon(Icons.favorite_border),
              //SizedBox(
              //  width: 15,
              //),
              Icon(Icons.menu),
            ],
          ),
        ],
      ),
    );
  }
}
