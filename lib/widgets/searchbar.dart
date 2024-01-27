import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: TextField(
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide.none),
            enabled: true,
            filled: true,
            fillColor: Color.fromARGB(255, 49, 49, 49),
            hintStyle: TextStyle(color: Color.fromRGBO(152, 152, 152, 1)),
            hintText: 'Search coffee',
            prefixIconColor: Color.fromARGB(255, 255, 255, 255),
            prefixIcon: Icon(
              IconlyLight.search,
            ),
            suffixIcon: Container(
              margin: EdgeInsets.all(4),
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(198, 124, 78, 1),
                  borderRadius: BorderRadius.circular(12)),
              child: Icon(
                FontAwesomeIcons.sliders,
                size: 20,
                color: Colors.white,
              ),
            )),
      ),
    );
  }
}
