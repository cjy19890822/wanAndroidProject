import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:wanandroidproject/app/base/base_common_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends BaseCommonView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  // @override
  // Widget build(BuildContext context) {
  //   ScreenUtil.init(context,designSize: const Size(750, 1334));
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('HomeView'),
  //       centerTitle: true,
  //     ),
  //     body:  Center(
  //       child: Text(
  //         'HomeView is working',
  //         style: TextStyle(fontSize: 20.sp),
  //       ),
  //     ),
  //   );
  // }

  @override
  get navTitle=>"home";


  @override
  Widget buildContent() {
    // TODO: implement buildContent

    return   Text(controller.name.value);
  }

  @override
  Widget buildNavgationbar() {
    // TODO: implement buildNavgationbar
    throw UnimplementedError();
  }
}
