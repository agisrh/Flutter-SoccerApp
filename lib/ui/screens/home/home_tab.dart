import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soccerapp/core/controllers/home_controller.dart';
import 'package:soccerapp/core/models/data/sch_date.dart';
import 'package:soccerapp/gen/assets.gen.dart';
import 'package:soccerapp/ui/theme/app_theme.dart';
import 'package:soccerapp/ui/theme/widgets/wigets.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  List<Widget> listItem(HomeController controller) {
    List<Widget> ele = [];

    for (var game in controller.schList) {
      ele.add(Padding(
        padding: const EdgeInsets.only(
          right: 18.0,
          left: 10,
          bottom: 8,
          top: 8,
        ),
        child: GameCard(game: game),
      ));
    }

    return ele;
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: Get.put(HomeController()),
      builder: (controller) {
        return Scaffold(
          body: Container(
            width: double.infinity,
            decoration: BoxDecoration(color: AppTheme.color.primary),
            child: Stack(
              children: <Widget>[
                SizedBox(
                  height: 150,
                  child: Container(
                    padding: const EdgeInsets.only(top: 20),
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
                              'Ball Area',
                              style: Get.textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: AppTheme.color.neutral.shade100,
                              ),
                            ),
                            SizedBox(height: 3.h),
                            Text(
                              'Soccer Insight',
                              style: Get.textTheme.bodyMedium?.copyWith(
                                letterSpacing: 1,
                                color: AppTheme.color.neutral.shade100,
                              ),
                            )
                          ],
                        ),
                        Assets.images.logo.image(color: Colors.white)
                      ],
                    ),
                  ),
                ),
                Container(
                  width: Get.width,
                  height: Get.height - 150,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  margin: const EdgeInsets.only(top: 150),
                  decoration: BoxDecoration(
                    color: AppTheme.color.neutral.shade300,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextLabel(
                        text: '#GAMEWEEK',
                        color: AppTheme.color.primary,
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                      ),
                      const SizedBox(height: 5),
                      Obx(
                        () => controller.isLoading.value
                            ? Center(
                                child: CircularProgressIndicator(
                                color: AppTheme.color.primary,
                                semanticsLabel: "Loading data...",
                              ))
                            : Expanded(
                                child: ListView.builder(
                                  padding: const EdgeInsets.only(bottom: 60),
                                  shrinkWrap: true,
                                  itemCount: controller.schList.length,
                                  itemBuilder: (context, index) {
                                    SchData game = controller.schList[index];
                                    return GameCard(game: game);
                                  },
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              ],
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
