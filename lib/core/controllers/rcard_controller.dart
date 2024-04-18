import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soccerapp/core/http/base_provider.dart';

import '../models/data/asist_data.dart';

class RCardController extends GetxController {
  ScrollController scrollController = ScrollController();
  RCardController() {
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
    getData();
  }

  var datalist = <AssistData>[].obs;
  var isLoading = true.obs;

  Future<void> getData() async {
    final base = BaseProvider();
    base.rcards().then((value) {
      List<AssistData> datas = AssistData.fromJsonList(value['data']);
      datalist.value = datas;
      isLoading.value = false;
      update();
    });
  }
}
