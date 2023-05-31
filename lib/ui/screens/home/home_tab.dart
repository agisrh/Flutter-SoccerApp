import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:soccerapp/core/controllers/home_controller.dart';
import 'package:soccerapp/core/data/dummy_data.dart';
import 'package:soccerapp/core/models/export_helper.dart';
import 'package:soccerapp/gen/assets.gen.dart';
import 'package:soccerapp/ui/theme/app_theme.dart';
import 'package:soccerapp/ui/theme/widgets/scroll_indicator.dart';
import 'package:soccerapp/ui/theme/widgets/wigets.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: Get.put(HomeController()),
      builder: (controller) {
        return Scaffold(
          body: Container(
            width: double.infinity,
            decoration: BoxDecoration(color: AppTheme.color.primary),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 150,
                    child: Container(
                      margin: const EdgeInsets.all(25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'BRI Liga 1',
                                style: Get.textTheme.headline6?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  color: AppTheme.color.neutral.shade100,
                                ),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                'Soccer App',
                                style: Get.textTheme.bodyMedium?.copyWith(
                                  letterSpacing: 1,
                                  color: AppTheme.color.neutral.shade100,
                                ),
                              )
                            ],
                          ),
                          Assets.images.briLiga1.image(color: Colors.white)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppTheme.color.neutral.shade300,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(30),
                        ),
                      ),
                      child: ListView(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppTheme.color.neutral.shade100,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 20.w),
                            height: 150,
                            child: CarouselSlider.builder(
                                autoSliderTransitionTime:
                                    const Duration(seconds: 1),
                                autoSliderTransitionCurve:
                                    Curves.fastLinearToSlowEaseIn,
                                enableAutoSlider: true,
                                unlimitedMode: true,
                                slideBuilder: (index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      color: controller.colors[index],
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(8)),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      controller.letters[index],
                                      style: const TextStyle(
                                        fontSize: 100,
                                        color: Colors.white,
                                      ),
                                    ),
                                  );
                                },
                                //slideTransform: CubeTransform(),
                                slideIndicator: CircularSlideIndicator(
                                  itemSpacing: 10,
                                  indicatorRadius: 3,
                                  padding: const EdgeInsets.only(bottom: 8),
                                ),
                                itemCount: controller.colors.length),
                          ),
                          SizedBox(height: 20.h),
                          SizedBox(
                            height: 80,
                            child: GridView.count(
                              crossAxisCount: 1,
                              controller: controller.scrollController,
                              scrollDirection: Axis.horizontal,
                              children: List.generate(
                                services().length,
                                (index) {
                                  ServiceData service = services()[index];
                                  return MenuItem(
                                    name: service.name,
                                    icon: service.icon,
                                    link: service.link,
                                  );
                                },
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20.h, top: 10.h),
                            child: ScrollIndicator(
                              scrollController: controller.scrollController,
                              width: 20,
                              height: 5,
                              indicatorWidth: 15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppTheme.color.neutral.shade500,
                              ),
                              indicatorDecoration: BoxDecoration(
                                color: AppTheme.color.primary,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          TextLabel(
                            text: '#GAMEWEEK',
                            color: AppTheme.color.primary,
                            seeMore: true,
                            seeText: 'See More',
                            padding: EdgeInsets.symmetric(horizontal: 22.w),
                          ),
                          SizedBox(
                            height: 200.0,
                            child: ListView.builder(
                              physics: const ClampingScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: games().length,
                              itemBuilder: (BuildContext context, int index) {
                                GameData game = games()[index];
                                double paddingLeft = index == 0 ? 24.0 : 0.0;
                                return Padding(
                                  padding: EdgeInsets.only(
                                    right: 18.0,
                                    left: paddingLeft,
                                    bottom: 8,
                                    top: 8,
                                  ),
                                  child: GameCard(game: game),
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 20.h),
                          TextLabel(
                            text: '#HIGHLIGHTS',
                            color: AppTheme.color.primary,
                            padding: EdgeInsets.symmetric(horizontal: 22.h),
                          ),
                          SizedBox(
                            height: 170.0,
                            child: ListView.builder(
                              physics: const ClampingScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: highlights().length,
                              itemBuilder: (BuildContext context, int index) {
                                HightlightData highlight = highlights()[index];
                                double paddingLeft = index == 0 ? 24.0 : 0.0;
                                return Padding(
                                  padding: EdgeInsets.only(
                                    right: 18.0,
                                    left: paddingLeft,
                                    bottom: 8,
                                    top: 8,
                                  ),
                                  child: HightlightCard(highlight: highlight),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class MenuItem extends StatelessWidget {
  final String name;
  final String icon;
  final String link;
  const MenuItem(
      {super.key, required this.name, required this.icon, required this.link});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          InkWell(
            onTap: () => Get.toNamed(link),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppTheme.color.neutral.shade500,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              height: 50,
              width: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(icon),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              name,
              style: TextStyle(fontSize: 10.sp),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
