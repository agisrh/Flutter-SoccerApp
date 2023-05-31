import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:soccerapp/ui/screens/home/home_tab.dart';
import 'package:soccerapp/ui/screens/matches/matches_screen.dart';
import 'package:soccerapp/ui/theme/app_theme.dart';
import 'package:soccerapp/ui/theme/widgets/bottom_navy_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void changePage(int? index) {
    setState(() {
      _currentIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const HomeTab(),
      const MatchesScreen(),
      Container(),
    ];

    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        body: pages[_currentIndex],
        extendBody: true,
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: (index) => setState(() => _currentIndex = index),
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: const Icon(Iconsax.home),
              title: Text(
                'Home',
                style: TextStyle(
                  letterSpacing: 0.5,
                  fontSize: 12.sp,
                ),
              ),
              activeColor: AppTheme.color.secondary,
              inactiveColor: AppTheme.color.neutral.shade500,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Iconsax.calendar_1),
              title: Text(
                'Schedule',
                style: TextStyle(
                  letterSpacing: 0.5,
                  fontSize: 12.sp,
                ),
              ),
              activeColor: AppTheme.color.secondary,
              inactiveColor: AppTheme.color.neutral.shade500,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Iconsax.profile_circle),
              title: Text(
                'Account',
                style: TextStyle(
                  letterSpacing: 0.5,
                  fontSize: 12.sp,
                ),
              ),
              activeColor: AppTheme.color.secondary,
              inactiveColor: AppTheme.color.neutral.shade500,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
