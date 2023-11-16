import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medcare/services/theme_services.dart';
import 'package:medcare/theme.dart';
import 'package:medcare/view/splash_screen.dart';

Future<void> main() async {
  // Ensure that Flutter is initialized
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Initialize Firebase
    await Firebase.initializeApp();
  } catch (e) {
    print('Error initializing Firebase: $e');
  }

  // Initialize GetStorage
  await GetStorage.init();

  // Run the app
  runApp(const MyApp());
}
// this is documentation file

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      home: SplashScreen(),
    );
  }
}
