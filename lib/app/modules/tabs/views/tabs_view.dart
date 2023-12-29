import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wanandroidproject/app/base/baseView.dart';
import 'package:wanandroidproject/app/enum/TabSubType.dart';

import '../controllers/tabs_controller.dart';

class TabsView extends BaseView<TabsController> {
   TabsView({Key? key}) : super(key: key);
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Tabs'),
  //       centerTitle: true,
  //       //bottom: _buildBottomBar(),
  //     ),
  //     body: const Center(
  //       child: Text(
  //         'TabsView',
  //         style: TextStyle(fontSize: 20),
  //       ),
  //     ),
  //     bottomNavigationBar: _buildBottomNavigaitonBar(),
  //     //body: TabBarView(children: children),
  //   );
  // }

  @override
  bool? get hasNavigationbar => true;

  @override
  Widget buildNavgationbar(){
    return  Obx(() => BottomNavigationBar(
      items: _buildNavigationItems(),
      type:BottomNavigationBarType.fixed ,
      currentIndex: controller.currentIndex.value,
      iconSize: 24,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.black,
     // mouseCursor: ,
      selectedFontSize: 14,
      unselectedFontSize: 12,
      onTap:(index){
       // print("update $index");
        controller.currentIndex.value = index;
        controller.update();
      },
    )) ;
  }

  List<BottomNavigationBarItem> _buildNavigationItems(){
    return [BottomNavigationBarItem(icon: TabSubType.my.activeimage,label: TabSubType.my.title,activeIcon: TabSubType.my.image),
      BottomNavigationBarItem(icon: TabSubType.home.activeimage,label: TabSubType.home.title,activeIcon: TabSubType.home.image)];
  }

  @override
  Widget buildContent() {
    // TODO: implement buildContent
    return IndexedStack(
      index: controller.currentIndex.value,
      children: controller.tablistPage,
    );
  }

}
