
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masrofy/core/extensions/build_context.dart';
import 'package:masrofy/core/theme/app_sizes.dart';
import 'package:masrofy/core/widgets/custom_button.dart';

class AuthButton extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'التسجيل من خلال جوجل',
      onPressed: () {},
      icon: FaIcon(
        FontAwesomeIcons.google,
        size: AppSizes.iconM,
      ),
      textStyle: context.textTheme.titleMedium!,
      variant: ButtonVariant.outlined,
    );
  }
}
