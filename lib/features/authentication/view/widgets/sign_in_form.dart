import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/painters/auth_form_painter.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../view_model/auth_view_model.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.read<AuthViewModel>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return CustomPaint(
      painter: AuthFormPainter(142),
      child: Padding(
        padding: const EdgeInsets.only(left: 50, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            const SizedBox(height: 30),
            Text(
              "Login",
              style: Theme.of(context).textTheme.titleLarge,
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
            AppTextButton(
              text: "Forgot Password?",
              backgroundColor: Colors.transparent,
              elevation: 0,
              textColor: Colors.white,
              onPressed: () => vm.signIn(
                emailController.text,
                passwordController.text,
              ),
            ),
            const Spacer(),
            Center(
              child: AppTextButton(
                text: "Login",
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 50),
                onPressed: () => vm.signIn(
                  emailController.text,
                  passwordController.text,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
