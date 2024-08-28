import 'package:flutter/material.dart';

extension Nav on BuildContext{
  push({required Widget screen,required Function(dynamic) onValue}){
    return Navigator.of(this).push(MaterialPageRoute(builder: (context){
                  return screen;
                })).then(onValue );
  }
}