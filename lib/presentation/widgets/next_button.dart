import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/app_images.dart';
import '../../common/buildcontext_extension.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: Colors.transparent,
      ),
      child: Container(
        constraints: const BoxConstraints(minWidth: 189),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: const ShapeDecoration(
          shape: StadiumBorder(),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF454581), Color(0xFF757581)],
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 27),
            Text(
              'Next',
              style: context.theme.textTheme.titleLarge?.copyWith(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SvgPicture.asset(AppImages.whiteArrow),
          ],
        ),
      ),
    );
  }
}
