import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soccerapp/core/data/dummy_data.dart';
import 'package:soccerapp/core/models/data/news_data.dart';
import 'package:soccerapp/ui/theme/app_theme.dart';
import 'package:soccerapp/ui/theme/utils/app_theme.dart';
import 'package:soccerapp/ui/theme/widgets/app_bar.dart';

import '../../theme/widgets/news_card.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppsBar(
        text: 'News',
        textColor: AppTheme.color.neutral.shade100,
        color: AppTheme.color.primary,
      ),
      backgroundColor: AppTheme.color.neutral.shade900,
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: Get.width,
              decoration: BoxDecoration(
                color: AppTheme.color.neutral.shade400,
                borderRadius: const BorderRadius.vertical(
                    // top: Radius.circular(30),
                    ),
              ),
              child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: news().length,
                  itemBuilder: (BuildContext context, int index) {
                    NewsData item = news()[index];
                    return NewsCard(item: item);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
