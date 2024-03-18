import 'package:fancy_password_field/fancy_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../config/themes/app_colors.dart';
import '../../config/themes/text_styles.dart';

class AppPasswordField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  const AppPasswordField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return FancyPasswordField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.mainBlue,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.lighterGray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? AppColors.moreLightGray,
        filled: true,
      ),
      validationRules: {
        DigitValidationRule(),
        UppercaseValidationRule(),
        LowercaseValidationRule(),
        SpecialCharacterValidationRule(),
        MinCharactersValidationRule(8),
      },
      strengthIndicatorBuilder: (strength) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: StepProgressIndicator(
            totalSteps: 8,
            currentStep: getStep(strength),
            selectedColor: getColor(strength)!,
            unselectedColor: Colors.grey[300]!,
          ),
        );
      },
      validationRuleBuilder: (rules, value) {
        return Wrap(
          runSpacing: 4.h,
          spacing: 4.w,
          children: rules.map(
            (rule) {
              if (value.isEmpty) {
                return const SizedBox.shrink();
              }
              final ruleValidated = rule.validate(value);
              return Container(
                decoration: BoxDecoration(
                  color:
                      ruleValidated ? AppColors.lightGreen : AppColors.lightRed,
                  borderRadius: BorderRadiusDirectional.circular(14.0.r),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 4.0.r, horizontal: 10.w),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (ruleValidated) ...[
                        Icon(
                          Icons.check,
                          color: AppColors.darkGreen,
                          size: 15.r,
                        ),
                        SizedBox(width: 5.w),
                      ],
                      if (!ruleValidated) ...[
                        Icon(
                          Icons.close,
                          color: AppColors.darkRed,
                          size: 15.r,
                        ),
                        SizedBox(width: 5.w),
                      ],
                      Text(
                        rule.name,
                        style: TextStyles.font11GreySemiBold.copyWith(
                          color: ruleValidated
                              ? AppColors.darkGreen
                              : AppColors.darkRed,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ).toList(),
        );
      },
      style: TextStyles.font14BlackRegular,
      validator: (value) {
        return validator(value);
      },
    );
  }

  int getStep(double strength) {
    if (strength == 0) {
      return 0;
    } else if (strength < .1) {
      return 1;
    } else if (strength < .2) {
      return 2;
    } else if (strength < .3) {
      return 3;
    } else if (strength < .4) {
      return 4;
    } else if (strength < .5) {
      return 5;
    } else if (strength < .6) {
      return 6;
    } else if (strength < .7) {
      return 7;
    }
    return 8;
  }

  Color? getColor(double strength) {
    if (strength == 0) {
      return Colors.grey[300];
    } else if (strength < .1) {
      return Colors.red;
    } else if (strength < .2) {
      return Colors.red;
    } else if (strength < .3) {
      return Colors.yellow;
    } else if (strength < .4) {
      return Colors.yellow;
    } else if (strength < .5) {
      return Colors.yellow;
    } else if (strength < .6) {
      return Colors.green;
    } else if (strength < .7) {
      return Colors.green;
    }
    return Colors.green;
  }
}
