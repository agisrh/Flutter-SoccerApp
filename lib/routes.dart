import 'package:get/get.dart';
import 'package:soccerapp/ui/screens/home/home_screen.dart';
import 'package:soccerapp/ui/screens/clubs/clubs_screen.dart';
import 'package:soccerapp/ui/screens/standing/standing_screen.dart';
import 'package:soccerapp/ui/screens/statistics/statistics_screen.dart';

class Routes {
  static const String root = '/';
  static const String clubs = '/clubs';
  static const String standings = '/standings';
  static const String statistics = '/statistics';
}

final List<GetPage> routes = [
  GetPage(name: Routes.root, page: () => const HomeScreen()),
  GetPage(name: Routes.clubs, page: () => const ClubsScreen()),
  GetPage(name: Routes.standings, page: () => const StandingScreen()),
  GetPage(name: Routes.statistics, page: () => const StatisticsScreen()),
];
