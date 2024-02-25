import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healhub/config/themes/text_styles.dart';

class DoctorImageAndName extends StatelessWidget {
  const DoctorImageAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 375.w,
        height: 491.h,
        foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4]),
        ),
        child: Image.asset('assets/images/onboarding_doctor_image.png'),
      ),
      Positioned(
        bottom: 18.h,
        left: 0,
        right: 0,
        child: Text(
          'Best Doctor\nAppointment App',
          style: TextStyles.font32BlueBold,
          textAlign: TextAlign.center,
        ),
      )
    ]);
  }
}
