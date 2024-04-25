import 'package:flutter/material.dart';
import 'package:soccerapp/ui/screens/statistics/assits_screen.dart';
import 'package:soccerapp/ui/screens/statistics/goal_screen.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const SliverAppBar(
              title: Text('Statistics'),
              pinned: true,
              floating: true,
              bottom: TabBar(
                isScrollable: true,
                tabs: [
                  Tab(child: Text('Goal')),
                  Tab(child: Text('Assist')),
                  Tab(child: Text('Yellow Card')),
                  Tab(child: Text('Red Card')),
                ],
              ),
            ),
          ];
        },
        body: const TabBarView(
          children: <Widget>[
            GoalScreen(),
            AssitsScreen(),
            GoalScreen(),
            AssitsScreen(),
          ],
        ),
      )),
    );
  }
}
