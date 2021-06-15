import 'package:flutter/material.dart';
import 'package:Portfolio/pages/LargeScreen/largeScreenAbout.dart';
import 'package:Portfolio/pages/LargeScreen/largeScreenHeader.dart';
import 'package:Portfolio/pages/LargeScreen/portfolio.dart';
import 'package:Portfolio/pages/Layout/appVM.dart';
import 'package:Portfolio/pages/MobileScreen/mobileScreenAbout.dart';
import 'package:Portfolio/pages/MobileScreen/mobileScreenHeader.dart';
import 'package:Portfolio/pages/MobileScreen/mobileScreenPortfolio.dart';
import 'package:Portfolio/pages/responsive_widget.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  // const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appVm = Provider.of<AppVM>(context, listen: true);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xEDF2F8),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 50.0, right: 50.0),
          child: SingleChildScrollView(
            child: Wrap(
              clipBehavior: Clip.hardEdge,
              alignment: WrapAlignment.center,
              children: [
                Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: ResponsiveWidget(
                      smallScreen: MobileScreenHeader(),
                      largeScreen: LargeScreenHeader(),
                    )),
                appVm.getPage == 0
                    ? ResponsiveWidget(
                        largeScreen: LargeScreenAbout(),
                        smallScreen: MobileScreenAbout(),
                      )
                    : ResponsiveWidget(
                        largeScreen: LargeScreenPortfolio(),
                        smallScreen: MobileScreenPortfolio())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
