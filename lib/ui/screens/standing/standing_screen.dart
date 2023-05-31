import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soccerapp/core/data/dummy_data.dart';
import 'package:soccerapp/core/models/export_helper.dart';
import 'package:soccerapp/ui/theme/app_theme.dart';
import 'package:soccerapp/ui/theme/widgets/wigets.dart';

class StandingScreen extends StatelessWidget {
  const StandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppsBar(
        text: 'Standings',
        textColor: AppTheme.color.neutral.shade100,
        color: AppTheme.color.primary,
      ),
      backgroundColor: AppTheme.color.neutral.shade300,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 20.h),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: Get.width / 2.3,
                        child: Text(
                          'Club',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppTheme.color.primary,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width / 2,
                        child: Row(
                          children: [
                            boxPoint('M', title: true),
                            boxPoint('W', title: true),
                            boxPoint('D', title: true),
                            boxPoint('L', title: true),
                            boxPoint('SG', title: true),
                            boxPoint('CG', title: true),
                            boxPoint('P', title: true),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(thickness: 1.5),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.only(left: 5.w),
              itemCount: standings().length,
              itemBuilder: (BuildContext context, int index) {
                int lastThree = standings().length - 3;
                PointData data = standings()[index];
                return Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: index < 3
                                ? Colors.blue
                                : index >= lastThree
                                    ? Colors.red
                                    : Colors.transparent,
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: Get.width / 2.3,
                            child: Row(
                              children: [
                                SizedBox(width: 8.w),
                                Text(
                                  (index + 1).toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: index < 9 ? 10.0 : 5.0),
                                  child: Image.asset(
                                    data.clubLogo,
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                                Text(
                                  data.club,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: Get.width / 2,
                            child: Row(
                              children: [
                                boxPoint(data.match.toString()),
                                boxPoint(data.win.toString()),
                                boxPoint(data.draw.toString()),
                                boxPoint(data.lose.toString()),
                                boxPoint(data.scoreGoal.toString()),
                                boxPoint(data.concededGoal.toString()),
                                boxPoint(data.point.toString()),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(thickness: 1),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget boxPoint(String value, {bool title = false}) {
    return SizedBox(
      width: 25,
      child: Text(
        value,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: title ? FontWeight.bold : FontWeight.normal,
          color: title ? AppTheme.color.primary : Colors.black,
        ),
      ),
    );
  }
}
