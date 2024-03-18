import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/login_request_body.dart';
import '../../logic/cubit/login_cubit.dart';
import '../widgets/login_bloc_listener.dart';
import '../widgets/welcome_text.dart';
import 'package:flutter/material.dart';
import '../widgets/terms_ans_conditions.dart';
import '../widgets/dont_have_account_text.dart';
import '../../../../config/themes/text_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/email_ans_password_enter.dart';

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
                  onPressed: () {
                    validateThenDoLogin(context);
                  },
                ),
                SizedBox(
                  height: 16.h,
                ),
                const TermsAndConditions(),
                SizedBox(
                  height: 60.h,
                ),
                const DoNotHaveAccountText(),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().login(
            LoginRequestBody(
              email: context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().passwordController.text,
            ),
          );
    }
  }
}
