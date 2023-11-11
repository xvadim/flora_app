import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'common/colors.dart';
import 'presentation/pages/birthday_selector_page.dart';
import 'presentation/pages/choice_page.dart';
import 'presentation/pages/summary_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flora App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.baseColor),
        cardColor: AppColors.cardColor,
        textTheme: GoogleFonts.nunitoTextTheme(),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const ChoicePage(),
        '/birthdaySelector': (_) => const BirthdaySelectorPage(),
        '/summary': (_) => const SummaryPage(),
      },
    );
  }
}
