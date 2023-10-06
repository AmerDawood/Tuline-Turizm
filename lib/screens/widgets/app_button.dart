import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  late String labelText;
  late Function function;
  AppButton({
    required this.function,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        onPressed: () {
          function();
        },
        child: Text(
          labelText,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 50),
          primary:Color.fromRGBO(24, 50, 75, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
    );
  }
}