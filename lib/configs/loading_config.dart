import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingConfig {
  static Widget loading(
      {String type = "fourRotatingDots",
      Color color = const Color.fromRGBO(21, 101, 192, 1),
      double size = 100}) {
    switch (type) {
      case "fourRotatingDots":
        return Center(
          child: LoadingAnimationWidget.fourRotatingDots(
            color: color,
            size: size,
          ),
        );
      default:
        return Center(
          child: LoadingAnimationWidget.fourRotatingDots(
            color: color,
            size: size,
          ),
        );
    }
  }
}
