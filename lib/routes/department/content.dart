import 'package:campuslib/controllers/content_controller.dart';
import 'package:campuslib/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Content extends StatelessWidget {
  Content({Key? key}) : super(key: key);

  final ContentController _contentController = Get.put(ContentController());

  Future<void> _launchUrl(var downloadLink) async {
    final Uri url = Uri.parse(downloadLink);
    if (!await launchUrl(url, mode: LaunchMode.inAppWebView)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? data = Get.arguments;
    final category = data?['category'];
    final appBarTitle = data?['title'];
    final subCategory = data?['subCategory'];
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
          child: RefreshIndicator(
            onRefresh: () async {
              _contentController.fetchBooks();
            },
            child: ListView.builder(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: contentlist?.length,
              itemBuilder: (context, index) => contentItem(contentlist?[index]),
            ),
          ),
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
                  )
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
