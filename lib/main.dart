import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main()  async{
  await ScreenUtil.ensureScreenSize();
  const ScreenUtilInit(designSize: Size(360,690),minTextAdapt: true,);
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      // builder:  (context, child) {
      //
      // },

    ),
  );
}
