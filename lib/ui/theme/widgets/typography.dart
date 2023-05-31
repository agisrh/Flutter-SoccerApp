import 'package:flutter/material.dart';
import 'package:soccerapp/ui/theme/app_theme.dart';

// ignore: must_be_immutable
class TextLabel extends StatelessWidget {
  String text;
  double? fontSize;
  EdgeInsetsGeometry? padding;
  Color? color;
  Color? colorLink;
  bool seeMore;
  String seeText;
  VoidCallback? link;
  TextLabel({
    super.key,
    required this.text,
    this.fontSize,
    this.padding,
    this.color,
    this.colorLink,
    this.seeMore = false,
    this.seeText = 'See More',
    this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: seeMore
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    fontSize: fontSize ?? 14.sp,
                    color: color ?? AppTheme.color.neutral.shade800,
                  ),
                ),
                InkWell(
                  onTap: () {
                    link!();
                  },
                  child: Text(
                    seeText,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: colorLink ?? AppTheme.color.secondary,
                    ),
                  ),
                ),
              ],
            )
          : Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                fontSize: fontSize ?? 14.sp,
                color: color ?? AppTheme.color.neutral.shade800,
              ),
            ),
    );
  }
}
