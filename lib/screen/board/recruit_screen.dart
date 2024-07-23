import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class RecruitScreen extends StatefulWidget {
  const RecruitScreen({super.key});

  @override
  State<RecruitScreen> createState() => _RecruitScreenState();
}

class _RecruitScreenState extends State<RecruitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("채용공고")),
      body: Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: ListView.builder(
          itemCount: 10,    // List.length
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Card(
                child: ListTile(
                  leading: Text('0'),
                  title: Text("채용공고"),
                  subtitle: Text('플러터 구인 중'),
                ),
              ),
              onTap: () { Navigator.pushNamed(context, "/recruit_detail"); },  // 클릭하면 상세 채용공고로 이동
            );
          },
        ),
      ),
    );
  }
}