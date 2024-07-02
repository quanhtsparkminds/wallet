import 'package:flutter/material.dart';
import 'package:myapp/commands/core/screen_edit.dart';
import 'package:myapp/commands/navigate_to_command.dart';
import 'package:myapp/config/dashboard_config.dart';
import 'package:myapp/constants/app_color.dart';
import 'package:myapp/routing/page_configuration/authen_page_configuration.dart';
import 'package:myapp/shared/widgets/appbar_custom.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.canvasColorDark,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Screen.resizeFitDevice(context, 88)),
        child: appBarCustom(
          context,
          appBarColor: AppColors.canvasColorDark,
          leadingPress: () {},
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {},
                    child: const SingleChildScrollView(
                        child: Text('Dashboard test')),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
              onPressed: () =>
                  NavigateToCommand().run(LoginPageConfiguration()),
              icon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('App logout'))),
          Align(
            alignment: Alignment.bottomCenter,
            child: SalomonBottomBar(
              currentIndex: _currentIndex,
              onTap: (i) => setState(() => _currentIndex = i),
              items: listMenuBottoms,
            ),
          )
        ],
      ),
    );
  }
}
