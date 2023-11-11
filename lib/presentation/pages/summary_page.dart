import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/app_images.dart';
import '../../common/buildcontext_extension.dart';
import 'app_base_page.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBasePage(
      backgroundImageName: AppImages.backgroundSummary,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Summary',
              style: context.theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
