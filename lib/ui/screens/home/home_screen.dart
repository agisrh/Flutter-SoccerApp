import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:soccerapp/ui/screens/home/home_tab.dart';
import 'package:soccerapp/ui/screens/news/news_screen.dart';
import 'package:soccerapp/ui/screens/statistics/statistics_screen.dart';
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

  Future<void> initPlugin() async {
    // If the system can show an authorization request dialog
    if (await AppTrackingTransparency.trackingAuthorizationStatus ==
        TrackingStatus.notDetermined) {
      // Show a custom explainer dialog before the system dialog
      // ignore: use_build_context_synchronously
      await showCustomTrackingDialog(context);
      // Wait for dialog popping animation
      await Future.delayed(const Duration(milliseconds: 200));
      // Request system's tracking authorization dialog
      await AppTrackingTransparency.requestTrackingAuthorization();
    }
  }

  Future<void> showCustomTrackingDialog(BuildContext context) async =>
      await showDialog<void>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Dear User'),
          content: const Text(
            'We care about your privacy and data security. We keep this app free by showing ads. '
            'Can we continue to use your data to tailor ads for you?\n\nYou can change your choice anytime in the app settings. '
            'Our partners will collect data and use a unique identifier on your device to show you ads.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Continue'),
            ),
          ],
        ),
      );

  DateTime currentBackPressTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized()
        .addPostFrameCallback((_) => initPlugin());
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const HomeTab(),
      const NewsScreen(),
      const StatisticsScreen(),
    ];

    return WillPopScope(
      onWillPop: _onBackPressed,
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
              icon: const Icon(Iconsax.radio4),
              title: Text(
                'News',
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
              icon: const Icon(Iconsax.diagram),
              title: Text(
                'Statistics',
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

  Future<bool> _onBackPressed() {
    DateTime now = DateTime.now();
    if (_currentIndex != 0) {
      setState(() {
        _currentIndex = 0;
      });
      return Future.value(false);
    } else {
      if (now.difference(currentBackPressTime) > const Duration(seconds: 2)) {
        currentBackPressTime = now;
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Please click back again to exit")));
        return Future.value(false);
      }
    }
    return Future.value(true);
  }
}
