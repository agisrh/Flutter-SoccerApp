import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:soccerapp/core/models/export_helper.dart';
import 'package:soccerapp/ui/theme/app_theme.dart';

// ignore: must_be_immutable
class HightlightCard extends StatelessWidget {
  HightlightData highlight;
  HightlightCard({super.key, required this.highlight});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: AppTheme.color.neutral.shade400,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.darken),
                    child: Image.network(
                      highlight.thumbnail,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  child: Icon(
                    Iconsax.play_circle,
                    size: 30,
                    color: AppTheme.color.secondary,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${highlight.teamA} VS ${highlight.teamB}',
                  style: TextStyle(fontSize: 12.sp),
                ),
                SizedBox(height: 3.h),
                Row(
                  children: [
                    Icon(
                      Iconsax.calendar_2,
                      size: 15,
                      color: AppTheme.color.neutral.shade600,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      highlight.date,
                      style: TextStyle(
                        fontSize: 10.sp,
                        letterSpacing: 0.5,
                        color: AppTheme.color.neutral.shade600,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
