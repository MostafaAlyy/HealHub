import 'package:flutter/material.dart';
import '../../../../config/themes/text_styles.dart';


class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font12GreyRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: TextStyles.font12DarkBlueMedium.copyWith(height: 1.5),
          ),
          TextSpan(
            text: ' and',
            style: TextStyles.font12GreyRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: TextStyles.font12DarkBlueMedium.copyWith(height: 1.5),
          ),
        ]));
  }
}
