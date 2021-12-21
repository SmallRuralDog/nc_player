import 'package:get/get.dart';
import 'package:nc_player/config/provider.dart';
import 'package:nc_player/controller/base_controller.dart';
import 'package:nc_player/model/profile.dart';
import 'package:nc_player/model/user_level.dart';
import 'package:nc_player/page/login/view.dart';
import 'package:sp_util/sp_util.dart';

class UserController extends BaseController {
  var isLogin = false.obs;



  var profile = Profile().obs;
  var userLevel = UserLevel().obs;

  @override
  void onInit() {
    super.onInit();
    checkLogin();

  }

  checkLogin() async {
    var value = await ApiProvider().userAccount();
    if (value.body['profile'] != null) {
      isLogin.value = true;
      profile.value = Profile.fromJson(value.body['profile']);
      getUSerLevel();
    } else {
      SpUtil.remove("LOGIN_COOKIE");
      print("未登录");
    }
  }

  getUSerLevel() async {
    var value = await ApiProvider().userLevel();
    userLevel.value = UserLevel.fromJson(value.body['data']);
  }

  toLogin() {
    Get.bottomSheet(
      LoginPage(),
      ignoreSafeArea: true,
    );
  }
}
