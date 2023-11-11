import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'application/flora_navigator_bloc.dart';
import 'common/colors.dart';
import 'presentation/pages/birthday_selector_page.dart';
import 'presentation/pages/services_page.dart';
import 'presentation/pages/summary_page.dart';

void main() {
  runApp(const FloraApp());
}

class FloraApp extends StatefulWidget {
  const FloraApp({super.key});

  @override
  State<FloraApp> createState() => _FloraAppState();
}

class _FloraAppState extends State<FloraApp> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FloraNavigatorBloc>(
      create: (context) => FloraNavigatorBloc(_navigatorKey),
      child: MaterialApp(
        title: 'Flora App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.baseColor),
          cardColor: AppColors.cardColor,
          textTheme: GoogleFonts.nunitoTextTheme(),
          useMaterial3: true,
        ),
        navigatorKey: _navigatorKey,
        initialRoute: '/',
        routes: {
          '/': (_) => const ServicesPage(),
          '/birthdaySelector': (_) => const BirthdaySelectorPage(),
          '/summary': (_) => const SummaryPage(),
        },
      ),
    );
  }
}
