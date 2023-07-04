import 'package:flutter/material.dart';

class TopSearchBar extends StatelessWidget {
  const TopSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: TextField(
        autocorrect: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(22, 0, 0, 0),
          filled: true,
          fillColor: Colors.deepOrange.shade100,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(40),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          hintText: "Search department",
          suffixIcon: ElevatedButton(
            onPressed: () {
              print("searched clicked");
            },
            style: ButtonStyle(
                elevation: MaterialStateProperty.resolveWith((states) => 0.0),
                iconColor: MaterialStateColor.resolveWith(
                    (states) => Colors.deepOrange),
                backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Colors.transparent),
                shape: MaterialStateProperty.resolveWith(
                    (states) => CircleBorder())),
            child: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
