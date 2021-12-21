import 'package:flutter/material.dart';

import 'package:nc_player/config/data.dart';

class MDivider extends StatelessWidget {
  const MDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: MData.px1,
      color: MData.themeData(context).dividerColor.withAlpha(10),
    );
  }
}
