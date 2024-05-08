import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soccerapp/core/http/base_provider.dart';
import 'package:soccerapp/core/models/data/sch_date.dart';

class HomeController extends GetxController {
  ScrollController scrollController = ScrollController();
  HomeController() {
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
    getNextMatch();
  }

  var schList = <SchData>[].obs;
  var isLoading = true.obs;

  Future<void> getNextMatch() async {
    final base = BaseProvider();
    base.nextmatch().then((value) {
      print(value['data']);
      List<SchData> datas = SchData.fromJsonList(value['data']);
      for (var i = 0; i < datas.length; i++) {
        SchData dt = datas[i];
        if (dt.date == "" || dt.date == "null" || dt.date.isEmpty) {
          datas[i].date = datas[i - 1].date;
        }
      }
      List<SchData> fnldata = [];
      for (var dt in datas) {
        if (dt.time != "null") {
          fnldata.add(dt);
        }
      }
      schList.value = fnldata;
      isLoading.value = false;
      update();
    });
  }

  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];
  final List<String> letters = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
  ];
}
