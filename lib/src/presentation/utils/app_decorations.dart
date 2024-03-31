import 'package:flutter/material.dart';

class AppDecorations {
  AppDecorations._();

  static InputDecoration defaultInputDecoration() => const InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Color(0XFF979797),
            width: 2,
          ),
        ),
      );

  static BoxDecoration defaultBoxDecoration() => BoxDecoration(
        border: Border.all(width: 1.5),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
          ),
          BoxShadow(
            color: Colors.white,
            spreadRadius: -1.0,
            blurRadius: 1,
            offset: Offset(0, 4),
          ),
        ],
      );
}
