import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:soccerapp/core/models/data/news_data.dart';
import 'package:soccerapp/ui/screens/news/news_detail_screen.dart';

import '../utils/app_theme.dart';

// ignore: must_be_immutable
class NewsCard extends StatelessWidget {
  NewsData item;
  NewsCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => NewsDetailScreen(urls: item.url, title: item.title));
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.color.neutral.shade100,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(138, 149, 158, 0.2),
              blurRadius: 8,
              offset: Offset(0, 3),
            )
          ],
        ),
        padding: const EdgeInsets.only(bottom: 5),
        margin: const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  child: Image.network(
                    item.thumbnail,
                    fit: BoxFit.cover,
                    height: 150,
                    width: Get.width,
                    errorBuilder: ((context, error, stackTrace) {
                      return Image.asset("assets/images/avatar.png");
                    }),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                item.title,
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
