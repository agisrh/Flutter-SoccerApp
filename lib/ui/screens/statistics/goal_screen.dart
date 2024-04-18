import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:soccerapp/core/controllers/goal_controller.dart';
import 'package:soccerapp/core/models/data/goal_data.dart';
import 'package:soccerapp/ui/theme/app_theme.dart';

class GoalScreen extends StatelessWidget {
  const GoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GoalController>(
      init: Get.put(GoalController()),
      builder: (controller) {
        return Container(
          margin: EdgeInsets.only(top: 10.h),
          child: Obx(
            () => controller.isLoading.value
                ? Center(
                    child: CircularProgressIndicator(
                    color: AppTheme.color.primary,
                  ))
                : ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    itemCount: controller.datalist.length,
                    itemBuilder: (BuildContext context, int index) {
                      GoalData goal = controller.datalist[index];
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text((index + 1).toString()),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15.w),
                                    child: goal.avatar.isNotEmpty
                                        ? ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            child: Image.network(
                                              goal.avatar,
                                              width: 40,
                                              height: 40,
                                              fit: BoxFit.cover,
                                            ),
                                          )
                                        : CircleAvatar(
                                            backgroundColor:
                                                AppTheme.color.neutral.shade400,
                                            child: const Icon(Iconsax.user),
                                          ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(goal.name),
                                      SizedBox(height: 5.h),
                                      Row(
                                        children: [
                                          Image.network(
                                            goal.clubLogo,
                                            height: 20,
                                          ),
                                          SizedBox(width: 5.w),
                                          // Text(
                                          //   goal.club,
                                          //   style: TextStyle(
                                          //     fontSize: 12.sp,
                                          //     color: AppTheme.color.neutral.shade600,
                                          //   ),
                                          // )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Text(
                                  goal.goals,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppTheme.color.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const Divider(thickness: 1),
                        ],
                      );
                    },
                  ),
          ),
        );
      },
    );
  }
}
