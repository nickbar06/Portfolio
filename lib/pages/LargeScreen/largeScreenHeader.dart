import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Portfolio/pages/Layout/appVM.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class LargeScreenHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appVm = Provider.of<AppVM>(context, listen: true);

    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Nicolas Barrionuevo',
            style: GoogleFonts.yanoneKaffeesatz(
                fontWeight: FontWeight.bold, fontSize: 35),
          ),
          Spacer(flex: 2),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                children: [
                  appVm.getPage == 0
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: CircleAvatar(
                            backgroundColor: Color.fromRGBO(50, 59, 172, 1),
                            radius: 3,
                          ),
                        )
                      : Container(
                          height: 15,
                        ),
                  TextButton(
                    onPressed: () => {appVm.setPage = 0},
                    // style: ButtonStyle(color),
                    // radius: 30,
                    // onTap: () => {print('about me')},
                    child: Text('ABOUT ME',
                        style: GoogleFonts.yanoneKaffeesatz(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: appVm.getPage == 0
                                ? Color.fromRGBO(50, 59, 172, 1)
                                : Colors.grey)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Column(
                  children: [
                    appVm.getPage == 1
                        ? Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: CircleAvatar(
                              backgroundColor: Color.fromRGBO(50, 59, 172, 1),
                              radius: 3,
                            ),
                          )
                        : Container(
                            height: 15,
                          ),
                    TextButton(
                      onPressed: () => {appVm.setPage = 1},
                      // style: ButtonStyle(color),
                      // radius: 30,
                      // onTap: () => {print('about me')},
                      child: Text('PORTFOLIO',
                          style: GoogleFonts.yanoneKaffeesatz(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: appVm.getPage == 1
                                  ? Color.fromRGBO(50, 59, 172, 1)
                                  : Colors.grey)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Spacer(flex: 3),
          IconButton(
            highlightColor: Color.fromRGBO(50, 59, 172, 1),
            color: Color.fromRGBO(50, 59, 172, 1),
            icon: FaIcon(FontAwesomeIcons.linkedin),
            onPressed: _launchURL,
          )
        ],
      ),
    );
  }

  _launchURL() async {
    print('here');
    const url = 'https://www.linkedin.com/in/nicolasio/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
