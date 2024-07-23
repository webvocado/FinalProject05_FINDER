import 'package:finder_app/screen/board/apply_screen.dart';
import 'package:finder_app/screen/board/recruit_screen.dart';
import 'package:finder_app/screen/user/login_screen.dart';
import 'package:finder_app/screen/user/mypage_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {

  late TabController controller; // late 키워드, 지금 선언할 때 에러 발생 x
  
  @override
  void initState() {
    super.initState();
    // length : 탭의 개수
    // vsync : 
    // with SingleTickerProviderStateMixin 를 지정해서 this 를 사용 
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("F I N D E R"), 
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 29, 104, 166),
        ),
      body: TabBarView(
        controller: controller,
        children: const [
          LoginScreen(),
          // JoinScreen(), // 로그인시 로그아웃으로 보임
          MypageScreen(),
          RecruitScreen(),
          ApplyScreen(),
        ],
      ),
      bottomNavigationBar: TabBar(
        tabs: const [
          Tab(child: Text("로그인"),),
          Tab(child: Text("마이페이지"),),
          Tab(child: Text("채용공고"),),
          Tab(child: Text("지원내역"),),
        ],
        controller: controller,
      ),
    );
  }
}