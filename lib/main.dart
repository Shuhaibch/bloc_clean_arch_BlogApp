import 'package:bloc_clean_architecture_blog_app/core/secrets/app_secrets.dart';
import 'package:bloc_clean_architecture_blog_app/core/theme/theme.dart';
import 'package:bloc_clean_architecture_blog_app/features/auth/presentation/pages/sigin_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url: AppSecrets.supabaseUrl, anonKey: AppSecrets.supabaseAnonKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      home: SignInPage(),
    );
  }
}