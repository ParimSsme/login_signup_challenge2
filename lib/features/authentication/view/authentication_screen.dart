import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/painters/background_painter.dart';
import '../view_model/auth_view_model.dart';
import 'widgets/auth_buttons.dart';
import 'widgets/sign_in_form.dart';
import 'widgets/sign_up_form.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<AuthViewModel>();
    final topPadding = MediaQuery.of(context).padding.top;

    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: AppColors.backgroundGradient,
        ),
        child: CustomPaint(
          painter: BackgroundPainter(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 50,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25.0, top: topPadding),
                child: Row(
                  spacing: 20,
                  children: [
                    Text(
                      "LOGO",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..shader = const LinearGradient(
                            colors: [AppColors.primary, AppColors.secondary],
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                          ).createShader(Rect.fromLTWH(25, 0, 120,
                              70)),
                      ),
                    ),
                    Image.asset('assets/images/logo.png', height: 45)
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  SizedBox(
                    width: 110,
                    child: const AuthButtons(),
                  ),
                  Expanded(
                    child: SizedBox(
                      /// 20: bottom button space, 55: top logo & text
                      height: (size.height * .92) - 20 - 75,
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 600),
                        transitionBuilder: (child, animation) {

                          final offsetAnimation = Tween<Offset>(
                            begin: const Offset(1, 0),
                            end: Offset.zero,
                          ).animate(CurvedAnimation(
                            parent: animation,
                            curve: Curves.easeOutCubic,
                          ));

                          return SlideTransition(
                            position: offsetAnimation,
                            child: FadeTransition(
                              opacity: animation,
                              child: child,
                            ),
                          );
                        },
                        child: vm.isSignup
                            ? const SignUpForm(key: ValueKey('signup'))
                            : const SignInForm(key: ValueKey('signin')),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
