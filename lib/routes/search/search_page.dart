// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:campuslib/controllers/content_controller.dart';
import 'package:campuslib/routes/home/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  Future<void> _launchUrl(var downloadLink) async {
    final Uri url = Uri.parse(downloadLink);
    if (!await launchUrl(url, mode: LaunchMode.inAppWebView)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    ContentController contentController = Get.put(ContentController());
    List<dynamic?>? data = [
      ...?contentController.bookList,
      ...?contentController.questionList,
      ...?contentController.syllabusList
    ];
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TopSearchBar(),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemCount: data.length,
                itemBuilder: (context, index) => contentItem(data[index]),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget contentItem(var props) {
    if (props?.status) {
      return Container(
        // margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Card(
          margin: EdgeInsets.zero,
          child: InkWell(
            onTap: () => _launchUrl(props?.downloadLink),
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
                    child:
                        (props?.author != null && (props?.author?.length > 0))
                            ? Text(
                                "Author: ${props.author}",
                                style: const TextStyle(
                                  fontStyle: FontStyle.italic,
                                  overflow: TextOverflow.clip,
                                ),
                              )
                            : null,
                  ),
                  Row(
                    children: [
                      Text("(${props.subCategories.toUpperCase()})"),
                      SizedBox(
                        width: 5,
                      ),
                      Text("(${props.categories})"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}
