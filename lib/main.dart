import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nc_player/controller/main_controller.dart';
import 'package:nc_player/controller/user_controller.dart';
import 'package:nc_player/page/home/view.dart';
import 'package:sp_util/sp_util.dart';

import 'config/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SpUtil.getInstance();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainController controller = Get.put(MainController());
    Get.put(UserController());

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => Obx(
        () => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: controller.themeMode.value,
          theme: FlexThemeData.light(
            scheme: controller.scheme.value,
            surfaceMode: FlexSurfaceMode.custom,
            background: Colors.white,
            blendLevel: 18,
            appBarStyle: controller.isDarkAppbar.value
                ? FlexAppBarStyle.primary
                : FlexAppBarStyle.background,
            appBarOpacity: 1,
            appBarElevation: 0,
            transparentStatusBar: true,
            tabBarStyle: FlexTabBarStyle.forBackground,
            tooltipsMatchBackground: true,
            swapColors: false,
            lightIsWhite: false,
            useSubThemes: true,
            visualDensity: FlexColorScheme.comfortablePlatformDensity,
            subThemesData: const FlexSubThemesData(
              useTextTheme: true,
              fabUseShape: true,
              interactionEffects: true,
              bottomNavigationBarOpacity: 0.95,
              bottomNavigationBarElevation: 5,
              inputDecoratorIsFilled: true,
              inputDecoratorBorderType: FlexInputBorderType.outline,
              inputDecoratorUnfocusedHasBorder: false,
              inputDecorationRadius: 5,
              blendOnColors: true,
              blendTextTheme: true,
              popupMenuOpacity: 0.95,
              buttonMinSize: Size(15, 10),
              buttonPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              elevatedButtonRadius: 5,
            ),
          ),
          darkTheme: FlexThemeData.dark(
            scheme: controller.scheme.value,
            surfaceMode: FlexSurfaceMode.custom,
            background: Colors.black87,
            blendLevel: 18,
            appBarStyle: FlexAppBarStyle.background,
            appBarOpacity: 0.95,
            appBarElevation: 0,
            transparentStatusBar: true,
            tabBarStyle: FlexTabBarStyle.flutterDefault,
            tooltipsMatchBackground: true,
            swapColors: false,
            darkIsTrueBlack: false,
            useSubThemes: true,
            visualDensity: FlexColorScheme.comfortablePlatformDensity,
            subThemesData: const FlexSubThemesData(
              useTextTheme: true,
              fabUseShape: true,
              interactionEffects: true,
              bottomNavigationBarOpacity: 0.95,
              bottomNavigationBarElevation: 5,
              inputDecoratorIsFilled: true,
              inputDecoratorBorderType: FlexInputBorderType.outline,
              inputDecoratorUnfocusedHasBorder: false,
              inputDecorationRadius: 5,
              blendOnColors: true,
              blendTextTheme: true,
              popupMenuOpacity: 0.95,
              buttonMinSize: Size(15, 10),
              buttonPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              elevatedButtonRadius: 5,
            ),
          ),
          home: const HomePage(),
        ),
      ),
    );
  }
}
