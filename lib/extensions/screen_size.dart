import 'package:flutter/material.dart';

extension ScreenSize on BuildContext {
  getWidth({double divideBy = 1}) {
    return MediaQuery.sizeOf(this).width / divideBy;
  }

  getHeight({double divideBy = 1}) {
    return MediaQuery.sizeOf(this).height / divideBy;
  }
}