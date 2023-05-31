import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:soccerapp/core/models/export_helper.dart';
import 'package:soccerapp/ui/theme/app_theme.dart';

// ignore: must_be_immutable
class GameCard extends StatelessWidget {
  GameData game;
  GameCard({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      decoration: BoxDecoration(
        color: AppTheme.color.neutral.shade100,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(138, 149, 158, 0.2),
            blurRadius: 6,
            offset: Offset(0, 3),
          )
        ],
      ),
      padding: EdgeInsets.symmetric(vertical: 10.w),
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            game.date,
                            style: Get.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: AppTheme.color.neutral.shade800,
                            ),
                          ),
                          SizedBox(height: 3.h),
                          Text(
                            'KICK OFF ${game.kickOff}',
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: AppTheme.color.neutral.shade600,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/${game.liveOn}',
                        height: 25,
                      ),
                    ],
                  ),
                ),
                const Divider(thickness: 1),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 115,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/${game.logoA}',
                              height: 50,
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              game.teamA,
                              style: TextStyle(fontSize: 13.sp),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Text(
                        'VS',
                        style: Get.textTheme.headline4?.copyWith(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: AppTheme.color.neutral.shade800,
                        ),
                      ),
                      SizedBox(
                        width: 115,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/${game.logoB}',
                              height: 50,
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              game.teamB,
                              style: TextStyle(fontSize: 13.sp),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              children: [
                Icon(
                  Iconsax.location,
                  size: 15,
                  color: AppTheme.color.neutral.shade600,
                ),
                SizedBox(width: 5.w),
                Text(
                  game.homeBase,
                  style: TextStyle(
                    fontSize: 10.sp,
                    letterSpacing: 0.5,
                    color: AppTheme.color.neutral.shade600,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
