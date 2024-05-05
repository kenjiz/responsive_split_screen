import 'package:flutter/material.dart';
import 'package:responsive_split_screen/helpers/constants.dart';
import 'package:responsive_split_screen/pages/responsive/desktop_web.dart';
import 'package:responsive_split_screen/pages/responsive/mobile_tablet.dart';
import 'package:responsive_split_screen/pages/responsive/responsive_layout_builder.dart';
import 'package:responsive_split_screen/state/app_state_notifier.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return AppStateNotifier(
      child: ResponsiveLayoutBuilder(
        mobile: MobileTablet(selectedPages: SelectedPage.bodySelectedPage),
        tablet: MobileTablet(selectedPages: SelectedPage.bodySelectedPageSplitScreen),
        desktopWeb: DesktopWeb(selectedPages: SelectedPage.bodySelectedPageSplitScreen),
      ),
    );
  }
}
