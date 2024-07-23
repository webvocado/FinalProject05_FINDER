import 'package:finder_app/models/board.dart';
import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class RecruitDetailScreen extends StatefulWidget {
  const RecruitDetailScreen({super.key});

  @override
  State<RecruitDetailScreen> createState() => _RecruitDetailScreenState();
}

class _RecruitDetailScreenState extends State<RecruitDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("채용공고 상세 조회"),
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: ListTile(
                leading: const Icon(Icons.article),
                title: Text('제목'),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.person),
                title: Text('작성자'),
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              padding: const EdgeInsets.all(12.0),
              width: double.infinity,
              height: 320.0,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3), // 그림자의 색상과 투명도
                    spreadRadius: 2, // 그림자의 확산 정도
                    blurRadius: 8, // 그림자의 흐림 정도
                    offset: const Offset(4, 4), // 그림자의 위치 (x, y)
                  ),
                ],
                borderRadius: BorderRadius.circular(8), // 옵션: 모서리 둥글기
              ),
              child: SingleChildScrollView(
                child: Text('내용'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
