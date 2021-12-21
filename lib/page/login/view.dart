import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nc_player/config/data.dart';
import 'package:nc_player/controller/user_controller.dart';
import 'package:styled_widget/styled_widget.dart';

import 'logic.dart';

class LoginPage extends GetView<UserController> {
  final logic = Get.put(LoginLogic());

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: Colors.transparent,
          leading: Container(),
          actions: [
            IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.close),
            )
          ],
        ),
        preferredSize: MData.appBarHeight,
      ),
      body: ListView(
        children: [
          //LOGO
          <Widget>[
            Image.asset(
              "assets/images/logo_o.png",
              width: 40.w,
            ),
            const Text("欢迎来到NC云音乐")
                .fontSize(20.sp)
                .fontWeight(FontWeight.bold)
                .marginOnly(
                  left: 5.w,
                ),
          ].toRow().paddingSymmetric(
                horizontal: 15.w,
              ),

          //表单
          _buildForm(context),
        ],
      ).backgroundColor(MData.colorScheme(context).background),
    );
  }

  Widget _buildForm(BuildContext context) {
    return <Widget>[
      TextField(
        decoration: const InputDecoration(
          labelText: "手机号码",
        ),
        onChanged: (value) {
          logic.phone.value = value;
        },
      ),
      TextField(
        obscureText: true,
        decoration: const InputDecoration(
          labelText: "登录密码",
        ),
        onChanged: (value) {
          logic.password.value = value;
        },
      ).marginOnly(
        top: 15.w,
      ),
      Obx(
        () => ElevatedButton(
          onPressed: logic.phone.isEmpty || logic.password.isEmpty
              ? null
              : () => logic.login(),
          child: const Text("登录").paddingSymmetric(
            vertical: 12.5.w,
          ),
        ).marginOnly(
          top: 15.w,
        ),
      ),
    ]
        .toColumn(
          crossAxisAlignment: CrossAxisAlignment.stretch,
        )
        .paddingAll(15.w)
        .marginOnly(
          top: 15.w,
        );
  }
}
