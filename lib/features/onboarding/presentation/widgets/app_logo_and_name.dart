import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import '../../../../config/themes/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLogoAndName extends StatelessWidget {
  const AppLogoAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svg/app_logo.svg'),
        SizedBox(width: 10.w),
        Text(
          'HealHub',
          style: TextStyles.font24BlackBold,
        ),
      ],
    );
  }
}
