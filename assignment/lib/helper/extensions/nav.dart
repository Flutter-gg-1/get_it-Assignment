import 'package:flutter/material.dart';

extension Nav on BuildContext {
  navTo(Widget page) {
    return Navigator.push(this, MaterialPageRoute(builder: (context) {
      return page;
    }));
  }
}
