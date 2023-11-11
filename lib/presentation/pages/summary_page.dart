import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/flora_navigator_bloc.dart';
import '../../common/app_images.dart';
import '../../common/buildcontext_extension.dart';
import '../../domain/flora_services.dart';
import '../widgets/summary_card.dart';
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
            const SizedBox(height: 73),
            BlocBuilder<FloraNavigatorBloc, FloraNavigatorState>(
              builder: (context, state) {
                return Center(
                  child: IntrinsicWidth(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SummaryCard(
                          title: 'Service:',
                          text: serviceDescription[state.service!]!.title,
                        ),
                        const SizedBox(height: 16),
                        SummaryCard(
                          title: 'You year of birth:',
                          text: state.year!.toString(),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
