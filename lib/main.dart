import 'package:finder_app/screen/board/apply_screen.dart';
import 'package:finder_app/screen/board/recruit_detail_screen.dart';
import 'package:finder_app/screen/board/recruit_screen.dart';
import 'package:finder_app/screen/main_screen.dart';
import 'package:finder_app/screen/user/join_screen.dart';
import 'package:finder_app/screen/user/login_screen.dart';
import 'package:finder_app/screen/user/mypage_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FINDER - FLUTTER',
      initialRoute: '/main',
      routes: {
        '/main' : (context) => const MainScreen(),
        '/join' : (context) => const JoinScreen(),
        '/login' : (context) => const LoginScreen(),
        '/mypage' : (context) => const MypageScreen(),
        '/apply' : (context) => const ApplyScreen(),
        '/recruit' : (context) => const RecruitScreen(),
        '/recruit_detail' : (context) => const RecruitDetailScreen(),
      },
    );
  }
}