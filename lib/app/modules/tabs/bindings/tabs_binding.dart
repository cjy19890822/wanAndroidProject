import 'package:get/get.dart';

import '../../home/controllers/home_controller.dart';
import '../../my/controllers/my_controller.dart';
import '../controllers/tabs_controller.dart';

class TabsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabsController>(
      () => TabsController(),
    );
    Get.lazyPut<HomeController>(
          () => HomeController(),
    );

    Get.lazyPut<MyController>(
          () => MyController(),
    );
  }
}
