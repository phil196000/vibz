// import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/material.dart';
import 'package:vibz/Theme/default.dart';

class ThemeModel {
  final Color background;
  final Color greenBackgroundlight;
  final Color borderColor;
  final Color white;
  // final String email;

  ThemeModel ( {
    this.greenBackgroundlight = const Color.fromRGBO(18, 253, 190, 0.25),
    this.white = Colors.white,
    this.background = const Color.fromRGBO(43, 36, 107, 1),
    this.borderColor = const Color.fromRGBO(18, 253, 190, 1.0),

  });

// ThemeModel.fromJson(Map<String, dynamic> json)
//     : background = json['background'],borderColor = json[''];
//
// Map<String, dynamic> toJson() => {
//       'background': background,
//     };
}
