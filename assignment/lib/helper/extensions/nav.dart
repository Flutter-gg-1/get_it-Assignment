import 'package:flutter/material.dart';

extension Nav on BuildContext {
  navTo(Widget page, Function(dynamic)? onBack) {
    return Navigator.push(this, MaterialPageRoute(builder: (context) {
      return (page);
    })).then((valueReturn) {
      if (onBack != null) {
        valueReturn = onBack;
      }
    });
  }

  goBack(result) {
    Navigator.pop(this, result);
  }
}
