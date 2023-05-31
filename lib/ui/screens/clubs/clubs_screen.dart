import 'package:flutter/material.dart';
import 'package:soccerapp/core/data/dummy_data.dart';
import 'package:soccerapp/core/models/export_helper.dart';
import 'package:soccerapp/ui/theme/app_theme.dart';
import 'package:soccerapp/ui/theme/widgets/app_bar.dart';

class ClubsScreen extends StatelessWidget {
  const ClubsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppsBar(
        text: 'Club',
        textColor: AppTheme.color.neutral.shade100,
        color: AppTheme.color.primary,
      ),
      backgroundColor: AppTheme.color.neutral.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemCount: clubs().length,
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      ClubData club = clubs()[index];
                      return Padding(
                        padding: const EdgeInsets.only(top: 15, left: 15),
                        child: Container(
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
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.red,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                children: [
                                  Image.asset(
                                    club.logo,
                                    height: 70,
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    club.name,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
