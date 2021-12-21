import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nc_player/page/home/event/view.dart';
import 'package:nc_player/page/home/index/view.dart';
import 'package:nc_player/page/home/user/view.dart';
import 'package:styled_widget/styled_widget.dart';
import 'logic.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final logic = Get.put(HomeLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBody() {
    return <Widget>[
      PageView(
        controller: logic.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          UserPage(),
          IndexPage(),
          EventPage(),
        ],
      ),
    ].toStack();
  }

  Widget _buildBottomNavigationBar() {
    return Obx(
      () => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: logic.onTap,
        currentIndex: logic.currentIndex.value,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: "我的",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_book,
            ),
            label: "发现",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_library,
            ),
            label: "云村",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.live_tv_outlined,
            ),
            label: "视频",
          ),
        ],
      ),
    );
  }
}
