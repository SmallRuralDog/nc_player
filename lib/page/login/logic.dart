import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:nc_player/config/provider.dart';
import 'package:nc_player/controller/base_controller.dart';
import 'package:nc_player/controller/user_controller.dart';
import 'package:sp_util/sp_util.dart';

class LoginLogic extends BaseController {
  final userController = Get.find<UserController>();

  var phone = "18677067774".obs;
  var password = "zhangwei".obs;

  login() async {
    var value = await ApiProvider().loginCellphone(phone.value, password.value);

    int code = value.body['code'];
    if (code == 200) {
      String cookie = value.body['cookie'];

      print(cookie);

      SpUtil.putString("LOGIN_COOKIE", cookie);
      userController.checkLogin();
      Get.back();
    } else {
      String msg = value.body['msg'] ?? "登录错误";
      Fluttertoast.showToast(
        msg: msg,
        gravity: ToastGravity.CENTER,
      );
    }
  }
}
