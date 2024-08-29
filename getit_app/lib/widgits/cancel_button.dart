
import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: WidgetStateProperty.all<double>(0),
                    backgroundColor: const WidgetStatePropertyAll<Color>(Color.fromARGB(255, 231, 236, 240)),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                }, child: const Text("Cancel", style: TextStyle(color: Colors.black),)),
              );
  }
}