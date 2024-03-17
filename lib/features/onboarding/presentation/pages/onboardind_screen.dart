import 'package:flutter/material.dart';
import '../../../../config/themes/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/app_logo_and_name.dart';
import '../widgets/get_started_button.dart';
import '../widgets/doctor_image_and_name.dart';

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
                  style: TextStyles.font12GreyRegular,
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
