import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healhub/config/themes/text_styles.dart';

import 'package:healhub/features/onboarding/presentation/widgets/app_logo_and_name.dart';
import 'package:healhub/features/onboarding/presentation/widgets/doctor_image_and_name.dart';
import 'package:healhub/features/onboarding/presentation/widgets/get_started_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppLogoAndName(),
            SizedBox(
              height: 38.h,
            ),
            const DoctorImageAndName(),
            Column(
              children: [
                Text(
                  'Manage and schedule all of your medical appointments easily\nwith HealHub to get a new experience.',
                  textAlign: TextAlign.center,
                  style: TextStyles.font12Grey400Wight,
                ),
                SizedBox(
                  height: 30.h,
                ),
                const GetStartedButton()
              ],
            )
          ],
        ),
      ),
    );
  }
}
