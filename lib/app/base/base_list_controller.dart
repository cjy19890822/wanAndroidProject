import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:wanandroidproject/app/base/abstrct_network.dart';
import 'package:wanandroidproject/app/base/base_controller.dart';
import "package:flutter/material.dart";

abstract class BaseListController extends BaseController with AbstractListNetWork{
  int page = 1;
  int initPage = 1;
  RefreshController refreshController = RefreshController(initialRefresh: false);

  @override
  void getnetworkdata(Map<String, dynamic> info) {
    // TODO: implement getnetworkdata
  }

  @override
  void loadMore() {
    // TODO: implement loadMore
  }

  @override
  void refreshData() {
    // TODO: implement refreshData
  }

  @override
  Map<String, dynamic> configNetWorkParmas() {
    // TODO: implement configNetWorkParmas
    throw UnimplementedError();
  }
}