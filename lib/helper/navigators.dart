import 'package:flutter/material.dart';

extension Nav on BuildContext{
  push({required Widget screen}){
    return Navigator.of(this).push(MaterialPageRoute(builder: (context){
                  return screen;
                }));
  }
}