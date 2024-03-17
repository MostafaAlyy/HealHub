import 'package:flutter/material.dart';
import '../../../../config/routes/routes.dart';
import '../../../../config/themes/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/navigation_extension.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.pushNamed(Routes.loginRoute);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.mainBlue,
        minimumSize: Size(311.w, 52.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      child: Text(
        'Get Started',
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
