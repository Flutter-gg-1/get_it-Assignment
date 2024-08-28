import 'package:flutter/material.dart';

extension ScreenPush on BuildContext {
  push({required Widget target, Function(dynamic)? saveData}) {
    return Navigator.push(this, MaterialPageRoute(builder: (context)=>target))
    .then(
      (test) {
        if(saveData!=null) {
          saveData(test);
        }
      }
    );
  }
}