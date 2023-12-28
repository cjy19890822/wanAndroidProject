import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


enum EmptyStatusType {
  fail, // 请求失败，网络异常
  noMessage, // 无数据
}

class EmptyStatusWidget extends StatefulWidget {
  final String? message;
  final String? refreshTitle;
  final Color? bgColor;
  final Function()? onTap;
  final EmptyStatusType emptyType;
  final double? paddingTop;
  final double? width;
  final double? height;
  const EmptyStatusWidget({
     Key? key,
     this.message,
     this.refreshTitle,
     this.bgColor,
    this.onTap,
    this.paddingTop,
    required this.emptyType,
    this.width,
    this.height,
  }):super(key: key);

  @override
  State <EmptyStatusWidget> createState() => _EmptyStatusWidgetState();
}

class _EmptyStatusWidgetState extends State<EmptyStatusWidget> {
  // TODO: add state variables and methods
  @override
  Widget build(BuildContext context) {
    // TODO: add widget build method
    return GestureDetector(
      onTap: ()=>widget.onTap,
      child: Container(
        width: widget.width?? MediaQuery.of(context).size.width,
        height: widget.height ?? MediaQuery.of(context).size.height,
        color: widget.bgColor ?? Colors.white,
        padding: EdgeInsets.only(top: widget.paddingTop ?? 194.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _image(),
            _title(),
            _refreshButton(),
          ],
        ),

      ),
    );
  }



  /// 获取图片
  Widget _image(){
    return SizedBox(
      width: 160.w,
      height: 160.w,
      child: _getImageWidget(),
    );
  }
  Widget _getImageWidget() {
    if (widget.emptyType == EmptyStatusType.fail) {
      return Image.asset('assets/images/icon_image_fail.png');
    } else {
      return Image.asset('assets/images/image_empty.webp');
    }
  }


  //获取title
  Widget _title() {
    TextStyle style = TextStyle(fontSize: 14.sp, color: const Color(0xFF999999));
    return Text(_getTitleString(), style: style);
  }

  String _getTitleString() {
    if (widget.message != null) {
      return widget.message!;
    } else if (widget.emptyType == EmptyStatusType.fail) {
      return '网络异常，请重新加载';
    } else {
      return '暂无数据';
    }
  }

  //获取按钮
  Widget _refreshButton() {
      if(widget.refreshTitle != null && widget.refreshTitle!.isNotEmpty){
          TextStyle style = TextStyle(fontSize:16.sp,color: const Color(0xFFFFFFFF));
          Decoration decoration = BoxDecoration(
            color: const Color(0xFF102FA5),
            borderRadius: BorderRadius.circular(19.r),
          );
          return GestureDetector(
            onTap: widget.onTap,
            child: Container(
              width: 96.w,
              height: 38.h,
              decoration: decoration,
              margin: EdgeInsets.only(top: 18.h),
              alignment: Alignment.center,
              child: Text(widget.refreshTitle!, style: style),
            ),
          );
      }else{
        return const SizedBox();
      }

  }
}