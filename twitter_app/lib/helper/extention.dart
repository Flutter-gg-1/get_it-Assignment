import 'package:flutter/material.dart';

extension context on BuildContext {
  getWidth({double value = 1}) {
    return MediaQuery.of(this).size.width / value;
  }

  getHeight({double value = 1}) {
    return MediaQuery.of(this).size.height / value;
  }
}
