import 'package:flutter/material.dart';
import 'package:responsive_split_screen/helpers/constants.dart';
import 'package:responsive_split_screen/pages/user/user_detail.dart';
import 'package:responsive_split_screen/pages/user/user_list.dart';

class SplitScreen extends StatelessWidget {
  const SplitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          width: Sizes.listWidth,
          child: UserList(),
        ),
        VerticalDivider(width: Sizes.verticalDividerWidth),
        Expanded(
          child: UserDetail(),
        ),
      ],
    );
  }
}
