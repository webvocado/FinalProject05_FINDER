import 'package:flutter/material.dart';

class MypageScreen extends StatefulWidget {
  const MypageScreen({super.key});

  @override
  State<MypageScreen> createState() => _MypageScreenState();
}

class _MypageScreenState extends State<MypageScreen> {
  // 예시 데이터
  final String id = "user123";
  final String name = "홍길동";
  final String birthDate = "1990-01-01";
  final String phoneNumber = "010-1234-5678";
  final String email = "honggildong@example.com";
  final int age = 34;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('마이페이지'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('아이디: $id', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('이름: $name', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('생년월일: $birthDate', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('핸드폰 번호: $phoneNumber', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('이메일: $email', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('나이: $age', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
