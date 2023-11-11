import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/flora_navigator_bloc.dart';
import '../../common/app_images.dart';
import '../../domain/flora_services.dart';
import '../widgets/service_card.dart';
import 'app_base_page.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

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
    final block = context.read<FloraNavigatorBloc>();
    block.add(FloraNavigatorEvent.serviceSelected(service));
  }
}
