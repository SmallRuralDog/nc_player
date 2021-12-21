import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:sp_util/sp_util.dart';

class ApiProvider extends GetConnect {

  ApiProvider() {
    httpClient.baseUrl = "http://192.168.6.88:3001/";
    httpClient.addRequestModifier((Request request) {
      String cookie = SpUtil.getString("LOGIN_COOKIE").toString();
      request.headers['cookie'] = cookie;
      print(request.headers);
      return request;
    });
    httpClient.addResponseModifier((request, response) {
      print("S ================");
      print(request.url);
      print(response.body);
      print("E ================");
      return response;
    });
  }

  Future<Response> loginCellphone(String phone, String password) =>
      get("login/cellphone?phone=$phone&password=$password");

  Future<Response> loginStatus() => get("login/status");

  Future<Response> userAccount() => get("user/account");

  Future<Response> userLevel() => get("user/level");
}
