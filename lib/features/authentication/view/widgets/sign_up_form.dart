import 'package:flutter/material.dart';
import 'package:login_signup_challenge2/core/widgets/app_text_field.dart';
import 'package:provider/provider.dart';
import '../../../../core/painters/auth_form_painter.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../view_model/auth_view_model.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.read<AuthViewModel>();
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    final topPadding = MediaQuery.sizeOf(context).height * .18 + 58;

    return CustomPaint(
      painter: AuthFormPainter(topPadding),
      child: Padding(
        padding: const EdgeInsets.only(left: 50, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            const SizedBox(height: 30),
            Text(
              "Sign up",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            AppTextField(
              title: "User name",
              controller: emailController,
              keyboardType: TextInputType.text,
              icon: Icons.person_3_rounded,
            ),
            AppTextField(
              title: "Email",
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              icon: Icons.email,
            ),
            AppTextField(
              title: "Password",
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              icon: Icons.key_rounded,
            ),
            AppTextField(
              title: "Password",
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              icon: Icons.key_rounded,
            ),
            const Spacer(),
            Center(
              child: AppTextButton(
                text: "Sign up",
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 50),
                onPressed: () => vm.signUp(
                  nameController.text,
                  emailController.text,
                  passwordController.text,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
