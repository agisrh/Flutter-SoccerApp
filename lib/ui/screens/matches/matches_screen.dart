import 'package:flutter/material.dart';
import 'package:soccerapp/ui/theme/utils/app_theme.dart';
import 'package:soccerapp/ui/theme/widgets/app_bar.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppsBar(
        text: 'Matches',
        textColor: AppTheme.color.neutral.shade100,
        color: AppTheme.color.primary,
      ),
      backgroundColor: AppTheme.color.neutral.shade300,
    );
  }
}
