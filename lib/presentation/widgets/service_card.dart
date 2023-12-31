import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/app_images.dart';
import '../../common/buildcontext_extension.dart';
import '../../domain/flora_services.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.service,
    this.onPressed,
  });

  final FloraService service;
  final ValueChanged<FloraService>? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed == null ? null : onPressed!(service),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 31.0, horizontal: 12.0),
        decoration: BoxDecoration(
          color: context.theme.cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  serviceDescription[service]!.title,
                  style: context.theme.textTheme.titleLarge?.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  serviceDescription[service]!.descr,
                  style: context.theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SvgPicture.asset(AppImages.cardArrow),
          ],
        ),
      ),
    );
  }
}
