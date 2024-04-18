import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soccerapp/core/http/base_provider.dart';
import 'package:soccerapp/core/models/data/goal_data.dart';

class GoalController extends GetxController {
  ScrollController scrollController = ScrollController();
  GoalController() {
    scrollController = ScrollController();
  }
  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    super.onInit();
    getGoal();
  }

  var datalist = <GoalData>[].obs;
  var isLoading = true.obs;

  Future<void> getGoal() async {
    final base = BaseProvider();
    base.statgoals().then((value) {
      List<GoalData> datas = GoalData.fromJsonList(value['data']);
      datalist.value = datas;
      isLoading.value = false;
      update();
    });
  }
}
