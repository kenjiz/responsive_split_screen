import 'package:flutter/material.dart';
import 'package:responsive_split_screen/pages/dashboard.dart';
import 'package:responsive_split_screen/pages/responsive/split_screen.dart';
import 'package:responsive_split_screen/pages/user/user_grid.dart';
import 'package:responsive_split_screen/pages/user/user_list.dart';

enum ResponsiveSizes {
  mobile,
  tablet,
  desktopWeb;

  /// Takes account view size, great when resizing  or changing orientation
  /// it gives the width of the current rendered view
  ///
  static ResponsiveSizes whichDevice() {
    final view = WidgetsBinding.instance.platformDispatcher.views.first;
    final physicalSizeWidth = view.physicalSize.width;
    final devicePixelRatio = view.devicePixelRatio;
    final widthInLogicalPixels = physicalSizeWidth / devicePixelRatio;

    // breakpoints to determine device view size, adjust as needed
    return switch (widthInLogicalPixels) {
      <= 600.0 => ResponsiveSizes.mobile,
      >= 600.1 && <= 1024.0 => ResponsiveSizes.tablet,
      _ => ResponsiveSizes.desktopWeb,
    };
  }
}

class Sizes {
  static const imageHeight = 580.0;
  static const iconLarge = 128.0;
  static const iconMedium = 38.0;
  static const iconSmall = 32.0;
  static const badgeLargeSize = 20.0;
  static const listWidth = 320.0;
  static const verticalDividerWidth = 1.0;
}

class SelectedPage {
  static final List<Widget> bodySelectedPage = <Widget>[
    const UserList(),
    const UserGrid(),
    const Dashboard(),
  ];

  static final List<Widget> bodySelectedPageSplitScreen = <Widget>[
    const SplitScreen(),
    const UserGrid(),
    const Dashboard(),
  ];
}
