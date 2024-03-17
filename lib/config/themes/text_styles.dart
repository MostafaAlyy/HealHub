import 'app_colors.dart';
import 'package:flutter/material.dart';
import '../../core/helpers/font_wight_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  //White
  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
  );
  //Black
  static TextStyle font14BlackRegular = TextStyle(
    fontSize: 14.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
  );
  //DarkBlue
  static TextStyle font12DarkBlueMedium = TextStyle(
    fontSize: 12.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font13DarkBlueRegular = TextStyle(
    fontSize: 13.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
  //Blue
  static TextStyle font13BlueRegular = TextStyle(
    fontSize: 13.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font24BlueRegular = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.mainBlue,
  );
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeightHelper.bold,
  );
  //Grey
  static TextStyle font12GreyRegular = TextStyle(
    fontSize: 12.sp,
    color: Colors.grey,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font14GreyRegular = TextStyle(
    fontSize: 14.sp,
    color: Colors.grey,
    fontWeight: FontWeightHelper.regular,
  );
  //LightGray
  static TextStyle font14LightGrayRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColors.lightGray,
    fontWeight: FontWeightHelper.regular,
  );
}
