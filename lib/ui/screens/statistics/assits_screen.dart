import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:soccerapp/core/data/dummy_data.dart';
import 'package:soccerapp/core/models/export_helper.dart';
import 'package:soccerapp/ui/theme/app_theme.dart';

class AssitsScreen extends StatelessWidget {
  const AssitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        itemCount: assits().length,
        itemBuilder: (BuildContext context, int index) {
          StatsData goal = assits()[index];
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text((index + 1).toString()),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: goal.photo != null
                            ? CircleAvatar(
                                backgroundImage: AssetImage(goal.photo!),
                              )
                            : CircleAvatar(
                                backgroundColor:
                                    AppTheme.color.neutral.shade400,
                                child: const Icon(Iconsax.user),
                              ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(goal.name),
                          SizedBox(height: 5.h),
                          Row(
                            children: [
                              Image.asset(
                                goal.clubLogo,
                                height: 20,
                              ),
                              SizedBox(width: 5.w),
                              Text(
                                goal.club,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppTheme.color.neutral.shade600,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Text(
                      '${goal.point}',
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
    );
  }
}
