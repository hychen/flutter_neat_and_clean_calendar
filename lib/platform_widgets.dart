import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:flutter/material.dart';

class PlatformIconButton extends StatelessWidget {
  final Widget icon;
  final EdgeInsetsGeometry? padding;
  final double? iconSize;
  final VoidCallback onPressed;

  const PlatformIconButton(
      {required this.icon,
      this.iconSize,
      this.padding,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // we want to use the web version of Macos UI Button.
    // if (!kIsWeb && Platform.isMacOS) {
      return MacosIconButton(icon: icon, onPressed: onPressed);
    // }
    // return IconButton(
    //  icon: icon,
    //  iconSize: iconSize,
    //  padding: padding ?? EdgeInsets.zero,
    //  onPressed: onPressed,
    //);
  }
}
