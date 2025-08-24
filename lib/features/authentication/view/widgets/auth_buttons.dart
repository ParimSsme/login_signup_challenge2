import 'package:flutter/material.dart';
import 'package:login_signup_challenge2/core/widgets/app_circle_image_button.dart';
import 'package:login_signup_challenge2/core/widgets/app_text_button.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_colors.dart';
import '../../view_model/auth_view_model.dart';

class AuthButtons extends StatelessWidget {
  const AuthButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<AuthViewModel>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10,
      children: [
        AppTextButton(
          text: "Login",
          backgroundColor:
              vm.isSignup ? AppColors.secondary : AppColors.primary,
          onPressed: () => vm.setIsSignup(false),
          elevation: 0,
          textColor: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
          ),
        ),
        AppTextButton(
          text: "Sign up",
          backgroundColor:
              vm.isSignup ? AppColors.primary : AppColors.secondary,
          onPressed: () => vm.setIsSignup(true),
          elevation: 0,
          textColor: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Column(
          spacing: 25,
          children: [
            AppCircleImageButton(
              imagePath: "assets/images/facebook.png",
              onPressed: () {},
            ),
            AppCircleImageButton(
              imagePath: "assets/images/twitter.png",
              onPressed: () {},
            ),
            AppCircleImageButton(
              imagePath: "assets/images/google.png",
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}
