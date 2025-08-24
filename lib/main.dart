import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_signup_challenge2/theme/app_theme.dart';
import 'package:provider/provider.dart';
import 'features/authentication/view/authentication_screen.dart';
import 'features/authentication/view_model/auth_view_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => ChangeNotifierProvider(
          create: (_) => AuthViewModel(),
          child: const MyApp(),
        ), // Wrap your app
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login/SignUp challenge',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const AuthenticationScreen(),
    );
  }
}
