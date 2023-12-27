import 'package:wanandroidproject/app/base/base_controller.dart';
import 'abstrct_network.dart';

abstract class BaseCommonController extends BaseController with AbstractNetWork{
  @override
  void getnetworkdata(Map<String, dynamic> info) {
    // TODO: implement getnetworkdata
  }

  @override
  Map<String, dynamic> configNetWorkParmas() {
    // TODO: implement configNetWorkParmas
    throw UnimplementedError();
  }

}