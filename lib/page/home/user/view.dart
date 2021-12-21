import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nc_player/config/data.dart';
import 'package:nc_player/model/model.dart';
import 'package:nc_player/widget/image.dart';
import 'package:nc_player/widget/label.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:nc_player/controller/user_controller.dart';

class UserPage extends StatelessWidget {
  final UserController userController = Get.find();

  UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _buildAppbar(context),
      body: ListView(
        children:  [
          UserInfo().elevation(5),
          UserMenu(),
        ],
      ).backgroundColor(MData.colorScheme(context).background),
    );
  }

  _buildAppbar(BuildContext context) {
    return PreferredSize(
        child: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.cloud_queue),
              onPressed: () {},
            ),
          ],
        ),
        preferredSize: MData.appBarHeight);
  }
}

class UserMenu extends GetView<UserController> {
  const UserMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color background = MData.colorScheme(context).background;

    List<MenuItem> gridMenuList = [
      MenuItem(icon: "assets/images/勋章.png", title: "会员"),
      MenuItem(icon: "assets/images/商品.png", title: "商场"),
      MenuItem(icon: "assets/images/文件.png", title: "演出"),
      MenuItem(icon: "assets/images/票券.png", title: "订单"),
    ];

    return <Widget>[
      GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: gridMenuList.map((e) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                e.icon,
                width: 30.w,
                height: 30.w,
              ).marginOnly(bottom: 8.w),
              Text(
                e.title,
                maxLines: 1,
              ).fontSize(12.sp).opacity(0.6)
            ],
          ).ripple().gestures(onTap: () => {});
        }).toList(),
      ),
    ].toColumn();
  }
}

class UserInfo extends GetView<UserController> {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      _userTop(context),
      _buildUserData(context),
    ].toColumn().backgroundColor(MData.colorScheme(context).background);
  }

  Widget _buildUserData(BuildContext context) {
    List<UserDataItem> data = [
      UserDataItem(num: "0", title: "动态"),
      UserDataItem(num: "4", title: "关注"),
      UserDataItem(num: "52", title: "粉丝"),
      UserDataItem(num: "0", title: "消息"),
    ];

    return data
        .map(
          (e) => <Widget>[
            Text(
              e.num,
            )
                .fontWeight(
                  FontWeight.bold,
                )
                .marginOnly(
                  bottom: 2.w,
                ),
            Text(e.title).fontSize(12.sp).opacity(0.6),
          ]
              .toColumn()
              .width((375 / 4).w)
              .paddingSymmetric(
                vertical: 10.w,
              )
              .ripple()
              .gestures(
                onTap: () => {},
              ),
        )
        .toList()
        .toRow(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
        );
  }

  Widget _userTop(BuildContext context) {
    return Obx(() =>
        controller.isLogin.value ? _hasLogin(context) : _notLogin(context));
  }

  Widget _notLogin(BuildContext context) {
    return <Widget>[
      Icon(
        Icons.account_circle,
        size: 55.w,
        color: MData.themeData(context).dividerColor,
      ),
      const Text("登录 / 注册").fontSize(18.sp).paddingOnly(
            left: 10.w,
          ),
    ]
        .toRow()
        .paddingSymmetric(
          horizontal: 15.w,
          vertical: 7.5.w,
        )
        .ripple()
        .gestures(
          onTap: () => controller.toLogin(),
        );
  }

  Widget _hasLogin(BuildContext context) {
    final profile = controller.profile.value;
    final userLevel = controller.userLevel.value;
    return <Widget>[
      MAvatar(
        profile.avatarUrl.toString(),
        size: 55.w,
        radius: 55.w,
      ),
      <Widget>[
        Text(profile.nickname.toString()).fontSize(18.sp),
        MLabel(
          "Lv." + userLevel.level.toString(),
          color: MData.colorScheme(context).error,
        ).marginOnly(
          top: 5.w,
        ),
      ]
          .toColumn(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          )
          .paddingOnly(
            left: 10.w,
          )
          .expanded(),
      ElevatedButton(
        onPressed: () => {},
        child: Text("签到"),
      ),
    ].toRow().paddingSymmetric(
          horizontal: 15.w,
          vertical: 7.5.w,
        );
  }
}
