import 'package:alquran_app/presentation/pages/splash/view/SplashPage.dart';
import 'package:alquran_app/presentation/pages/main/view/HomePage.dart';
import 'package:alquran_app/presentation/pages/quran/view/quran_detail_page.dart';
import 'package:alquran_app/presentation/pages/quran/view/quran_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String quran = '/quran';
  static const String quranDetail = '/quran_detai';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case quran:
        return MaterialPageRoute(builder: (_) => const QuranPage());
      case quranDetail:
        return MaterialPageRoute(builder: (_) => const QuranDetailPage());
      default:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}