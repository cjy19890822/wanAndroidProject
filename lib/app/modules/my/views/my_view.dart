import 'package:flutter/material.dart';

import 'package:wanandroidproject/app/base/base_common_view.dart';

import '../controllers/my_controller.dart';

class MyView extends BaseCommonView<MyController> {
   MyView({Key? key}) : super(key: key);


   @override
   get navTitle=>"my";

  @override
  Widget buildContent() {
    // TODO: implement buildContent
    return  Center(
        child: Text(
        'MyView is working',
        style: TextStyle(fontSize: 20),
    ));
  }

  @override
  Widget buildNavgationbar() {
    // TODO: implement buildNavgationbar
    throw UnimplementedError();
  }
}
