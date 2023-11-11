import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/app_images.dart';

class AppBasePage extends StatelessWidget {
  const AppBasePage({
    super.key,
    required this.backgroundImageName,
    required this.child,
  });

  final String backgroundImageName;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(backgroundImageName, fit: BoxFit.fill),
          child,
        ],
      ),
    );
  }
}
