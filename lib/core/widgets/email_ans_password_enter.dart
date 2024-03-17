import 'app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailAndPasswordEnter extends StatelessWidget {
  const EmailAndPasswordEnter({
    super.key,
  });

  final bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: 'Email',
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter your email';
            }
            return null;
          },
        ),
        SizedBox(
          height: 20.h,
        ),
        AppTextFormField(
          hintText: 'Password',
          isObscureText: true,
          suffixIcon:
              Icon(isObscureText ? Icons.visibility_off : Icons.visibility),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter your password';
            }
            return null;
          },
        ),
      ],
    );
  }
}
