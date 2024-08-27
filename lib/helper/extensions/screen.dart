import 'package:flutter/material.dart';

extension Screen on BuildContext{
  getHeight(){
    return MediaQuery.of(this).size.height;
  }
  getWidth(){
    return MediaQuery.of(this).size.width;
  }
}