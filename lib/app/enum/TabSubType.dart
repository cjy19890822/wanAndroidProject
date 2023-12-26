import 'package:flutter/material.dart';

enum TabSubType{home,my}

extension TabSubTypeExt on TabSubType{
  IconData get icon {
    switch(this){
      case TabSubType.home:
        return Icons.home;
      case TabSubType.my:
        return Icons.my_library_add;
    }
  }
  
  Image get image{
    switch(this){
      case TabSubType.home:
        return Image.asset("Assets/homeP.png",width: 20,height: 20,);
      case TabSubType.my:
        return Image.asset("Assets/my.png",width: 20,height: 20,);
    }
  }

  Image get activeimage{
    switch(this){
      case TabSubType.home:
        return Image.asset("Assets/homeP_h.png",width: 20,height: 20,);
      case TabSubType.my:
        return Image.asset("Assets/my_h.png",width: 20,height: 20);
    }
  }

  String get title {
    switch(this){
      case TabSubType.home:
        return "home";
      case TabSubType.my:
        return "my";
    }
  }
}
