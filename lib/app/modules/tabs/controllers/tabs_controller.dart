import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wanandroidproject/app/modules/home/views/home_view.dart';
import 'package:wanandroidproject/app/modules/my/views/my_view.dart';

class TabsController extends GetxController {
  //TODO: Implement TabsController

  final currentIndex = 0.obs;
   List<Widget> tablistPage = [ HomeView(),MyView()];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


}
