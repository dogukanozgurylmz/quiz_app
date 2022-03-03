import 'package:flutter/material.dart';

class TopStick extends StatelessWidget {
  const TopStick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 4,
      decoration: const BoxDecoration(
        color: Colors.blue,
        gradient: LinearGradient(
          colors: [
            Color(0xff3550DC),
            Color(0xff27A9F7),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );
  }
}
