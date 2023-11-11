import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/app_images.dart';
import '../../common/buildcontext_extension.dart';
import '../widgets/flora_year_picker.dart';
import '../widgets/next_button.dart';
import 'app_base_page.dart';

class BirthdaySelectorPage extends StatefulWidget {
  const BirthdaySelectorPage({super.key});

  @override
  State<BirthdaySelectorPage> createState() => _BirthdaySelectorPageState();
}

class _BirthdaySelectorPageState extends State<BirthdaySelectorPage> {
  late int _currentYear;
  late int _minimumYear;
  late int _selectedYear;

  @override
  void initState() {
    super.initState();

    _currentYear = DateTime.now().year;
    _minimumYear = _currentYear - 10;
    _selectedYear = _currentYear;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBasePage(
      backgroundImageName: AppImages.backgroundBirthdaySelector,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 191),
            Text(
              'Log in your date of birth',
              style: context.theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: FloraYearPicker(
                itemExtent: 60,
                visibleItemsCount: 5,
                minimumYear: _minimumYear,
                maximumYear: _currentYear,
                itemStyle: GoogleFonts.nunito(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
                onSelectedYearChanged: (year) {
                  _selectedYear = year;
                },
              ),
            ),
            const Spacer(),
            NextButton(onPressed: _onNext),
            const SizedBox(height: 81),
          ],
        ),
      ),
    );
  }

  Future<void> _onNext() async {
    print('CUR IT $_selectedYear');
    // await Navigator.pushNamed(context, '/summary');
  }
}
