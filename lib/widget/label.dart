import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nc_player/config/data.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:flutter/material.dart';

class MLabel extends StatelessWidget {
  const MLabel(
    this.text, {
    Key? key,
    this.color,
    this.border = true,
  }) : super(key: key);

  final Color? color;

  final String text;

  final bool border;

  @override
  Widget build(BuildContext context) {
    Widget label = Text(text).fontSize(10.sp).textColor(color);

    if (border) {
      label = label
          .paddingSymmetric(
            horizontal: 3.w,
          )
          .decorated(
              border: Border.all(
                width: MData.px1,
                color: color?.withOpacity(0.5) ??
                    MData.colorScheme(context).onBackground,
              ),
              borderRadius: BorderRadius.circular(
                3.w,
              ));
    }

    return label;
  }
}
