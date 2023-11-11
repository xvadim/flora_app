import 'package:flutter/material.dart';

import '../../common/app_images.dart';
import '../widgets/choice_card.dart';
import 'app_base_page.dart';

class ChoicePage extends StatelessWidget {
  const ChoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBasePage(
      backgroundImageName: AppImages.backgroundChoice,
      child: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ChoiceCard(
                // we can use easy_translation for translations our texts
                // or any other similar package
                title: 'Track my period',
                subTitle: 'contraception and wellbeing',
                onPressed: () => Navigator.pushNamed(
                  context,
                  '/birthdaySelector',
                ),
              ),
              const SizedBox(height: 73),
              ChoiceCard(
                title: 'Get pregnant',
                subTitle: 'learn about reproductive health',
                onPressed: () => Navigator.pushNamed(
                  context,
                  '/birthdaySelector',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
