import 'package:campuslib/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? data = Get.arguments;
    final category = data?['category'];
    final appBarTitle = data?['title'];
    final contentlist =
        data?['data']?.where((e) => e?.categories == category).toList();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            appBarTitle,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          titleSpacing: 00.0,
          centerTitle: true,
          elevation: 0,
          backgroundColor: AppColors.mainColor,
        ),
        body: Material(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: contentlist?.length,
            itemBuilder: (context, index) => contentItem(contentlist?[index]),
          ),
        ),
      ),
    );
  }

  Widget contentItem(var props) {
    return Container(
      // margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Card(
        margin: EdgeInsets.zero,
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.fromLTRB(15, 25, 15, 25),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  props.bookName +
                      ((props?.edition != null && props?.edition.length > 0)
                          ? (" ${props?.edition}E")
                          : ""),
                  style: const TextStyle(
                    overflow: TextOverflow.clip,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                Container(
                  child: (props?.author != null && (props?.author?.length > 0))
                      ? Text(
                          "Author: ${props.author}",
                          style: const TextStyle(
                            fontStyle: FontStyle.italic,
                            overflow: TextOverflow.clip,
                          ),
                        )
                      : null,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
