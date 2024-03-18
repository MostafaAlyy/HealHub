import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/app_password_field.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/cubit/login_cubit.dart';

class EmailAndPasswordEnter extends StatelessWidget {
  const EmailAndPasswordEnter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          SizedBox(
            height: 20.h,
          ),
          AppPasswordField(
            hintText: 'Password',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            controller: context.read<LoginCubit>().passwordController,
          ),
        ],
      ),
    );
  }
}
