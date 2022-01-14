import 'package:flutter/material.dart';
import 'package:technews_app/utils/colors.dart';
import 'package:technews_app/utils/text.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({Key? key})
      : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  final Size preferredSize;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: const [],
      backgroundColor: AppColors.black,
      elevation: 0,
      title: SizedBox(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoldText(text: 'Indo', size: 20, color: AppColors.primary),
              ModifiedText(text: 'News', size: 20, color: AppColors.lightwhite)
            ],
          )),
      centerTitle: true,
    );
  }
}
