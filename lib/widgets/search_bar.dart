import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: SizedBox(
        height: 40,
        child: TextField(
          decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              hintText: "Ara",
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(
                Icons.search,
                color: Color(0xff3550DC),
              )),
          cursorColor: Colors.transparent,
        ),
      ),
    );
  }
}
