import 'package:flutter/material.dart';
import 'package:responsive_split_screen/helpers/constants.dart';

class ResponsiveLayoutBuilder extends StatelessWidget {
  const ResponsiveLayoutBuilder({
    required this.mobile,
    required this.tablet,
    required this.desktopWeb,
    super.key,
  });

  final Widget mobile, tablet, desktopWeb;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (_, __) => switch (ResponsiveSizes.whichDevice()) {
          ResponsiveSizes.mobile => mobile,
          ResponsiveSizes.tablet => tablet,
          _ => desktopWeb,
        },
      ),
    );
  }
}
