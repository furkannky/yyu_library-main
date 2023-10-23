import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/route_manager.dart';
import 'package:yyu_library/pages/home_page.dart';
import 'package:yyu_library/repo/user_repo.dart';
import 'firebase_options.dart';
import 'pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  UserRepo().getAllUser();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobil Kutuphane',
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Colors.white),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        fontFamily: "Baumans",
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
