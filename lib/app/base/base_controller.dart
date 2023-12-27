import 'package:get/get.dart';

enum NetState{
  /// 初始状态
  initializeState,
  /// 加载状态
  loadingState,
  /// 错误状态,显示失败界面
  errorState,
  /// 错误状态,只弹错误信息
  erroronlyTotal,
  /// 错误状态,显示刷新按钮
  errorshowRelesh,
  /// 没有更多数据
  noMoreDataState,
  /// 是否还有更多数据
  hasMoreDataState,
  /// 空数据状态
  emptyDataState,
  /// 数据获取成功状态
  dataSussessState,
}

abstract class BaseController extends SuperController{
  NetState netState = NetState.initializeState;

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    //onReady做网络请求
    initData();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }

  void initData();


}