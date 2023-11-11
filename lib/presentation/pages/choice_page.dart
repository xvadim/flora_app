import 'package:flutter/material.dart';

import '../../common/app_images.dart';
import '../../domain/flora_services.dart';
import '../widgets/service_card.dart';
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
              ServiceCard(
                service: FloraService.trackPeriod,
                onPressed: (service) => _onCardPressed(context, service),
              ),
              const SizedBox(height: 73),
              ServiceCard(
                service: FloraService.getPregnant,
                onPressed: (service) => _onCardPressed(context, service),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onCardPressed(BuildContext context, FloraService service) {
    // Navigator.pushNamed(context, '/birthdaySelector');
  }
}
