import 'package:flutter/material.dart';

class ApplyScreen extends StatefulWidget {
  const ApplyScreen({super.key});

  @override
  State<ApplyScreen> createState() => _ApplyScreenState();
}

class _ApplyScreenState extends State<ApplyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("지원 내역")),
      body: Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: ListView.builder(
          itemCount: 10,    // List.length
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Card(
                child: ListTile(
                  leading: Text('0'),
                  title: Text("지원한 채용공고명"),
                  subtitle: Text('리액트 프론트엔드 구인 중'),
                ),
              ),
              onTap: () { Navigator.pushNamed(context, "/recruit_detail"); }, // 클릭하면 상세 채용공고로 이동
            );
          },
        ),
      ),
    );
  }
}