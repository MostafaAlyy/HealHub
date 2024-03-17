import '../widgets/welcome_text.dart';
import 'package:flutter/material.dart';
import '../widgets/terms_ans_conditions.dart';
import '../widgets/dont_have_account_text.dart';
import '../../../../config/themes/text_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/email_ans_password_enter.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 70.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const WelcomeText(),
                SizedBox(
                  height: 8.h,
                ),
                const EmailAndPasswordEnter(),
                SizedBox(
                  height: 24.h,
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyles.font13BlueRegular,
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                AppTextButton(
                  buttonText: "Login",
                  textStyle: TextStyles.font16WhiteSemiBold,
                  onPressed: () {},
                ),
                SizedBox(
                  height: 16.h,
                ),
                const TermsAndConditions(),
                SizedBox(
                  height: 60.h,
                ),
                const DoNotHaveAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
