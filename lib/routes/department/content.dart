import 'package:campuslib/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic?>? data = Get.arguments;
    final contentlist = data?['data'];
    return SafeArea(
      child: Scaffold(
        body: Material(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: contentlist?.length,
            itemBuilder: (context, index) => contentItem(contentlist?[index]),
          ),
        ),
      ),
    );
  }

  Widget contentItem(var props) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
      ),
      child: Ink(
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.fromLTRB(15, 12, 15, 12),
            decoration: BoxDecoration(
                // color: Colors.white,
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  props.bookName ?? "Not clickable",
                  style: TextStyle(
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
