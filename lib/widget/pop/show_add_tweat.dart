import 'package:flutter/material.dart';
import 'package:twitter/widget/button/custom_button.dart';
import 'package:twitter/widget/text_field/custom_text_field.dart';

showAddTweet({required BuildContext context,required  TextEditingController controller
, required Function(String) onSubmitted}) {
  showBottomSheet(
    context: context,
    builder: (context) {
      return SizedBox(
        height: 200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CustomTextField(controller: controller, onSubmitted:onSubmitted,),
              CustomButton(
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      );
    },
  );
}