import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';

class MobileScreenPortfolio extends StatelessWidget {
  final List<String> images = [
    'images/1.png',
    'images/2.png',
    'images/3.png',
    'images/4.png',
    'images/5.png',
    'images/6.png',
    'images/DR1.png',
    'images/UA1.png',
    'images/UA2.png',
    'images/appointmentManager.png',
    'images/crm.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...images.map((item) => appShowCase(item, context)).toList(),
        Container(
          height: 50,
        )
      ],
    );
  }

  Widget appInfo(String x) {
    if (x == "images/1.png" ||
        x == "images/2.png" ||
        x == "images/3.png" ||
        x == "images/4.png" ||
        x == "images/5.png" ||
        x == "images/6.png") {
      return Column(children: [
        Text(
          "Service Request Tracker application",
          style: GoogleFonts.yanoneKaffeesatz(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Color.fromRGBO(50, 59, 172, 1)),
        ),
        Text(
          "(Technologies: Flutter/Dart, SignalR, Push Notifications, Photo Gallery, Camera)",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ]);
    } else if (x == "images/DR1.png") {
      return Column(children: [
        Text(
          "Dining room attendance application + resident information viewer (Allergies/Preferences)",
          style: GoogleFonts.yanoneKaffeesatz(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Color.fromRGBO(50, 59, 172, 1)),
        ),
        Text(
          "(Technologies: Flutter/Dart)",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ]);
    } else if (x == "images/appointmentManager.png") {
      return Column(children: [
        Text(
          "Appointment manager application",
          style: GoogleFonts.yanoneKaffeesatz(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Color.fromRGBO(50, 59, 172, 1)),
        ),
        Text(
          "(Technologies: ASP.NET, Razor, C#, HTML, CSS)",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ]);
    } else if (x == "images/crm.png") {
      return Column(children: [
        Text(
          "Resident CRM application",
          style: GoogleFonts.yanoneKaffeesatz(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Color.fromRGBO(50, 59, 172, 1)),
        ),
        Text(
          "(Technologies: Flutter/Dart)",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ]);
    } else {
      return Column(children: [
        Text(
          "User Application Access Provider",
          style: GoogleFonts.yanoneKaffeesatz(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Color.fromRGBO(50, 59, 172, 1)),
        ),
        Text(
          "(Technologies: ASP.NET, DevExpress, JQuery, Razor, Bootstrap)",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ]);
    }
  }

  Widget appShowCase(x, context) {
    return Column(
      children: [
        Container(
          height: 50,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: _launchURL,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    maxRadius: 25,
                    child: ClipOval(
                      child: Image.asset(
                        'images/nick.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 15),
                    child: Text(
                      "nicolasio",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.ellipsisH),
                  onPressed: () {
                    showAdaptiveActionSheet(
                      context: context,
                      title: const Text('Title'),
                      actions: <BottomSheetAction>[
                        BottomSheetAction(
                            title: const Text('LinkedIn'),
                            onPressed: _launchURL),
                        BottomSheetAction(
                            title: const Text('Email me!'),
                            onPressed: () async {
                              await launch(_emailLaunchUri.toString());
                            }),
                      ],
                      cancelAction: CancelAction(
                          title: const Text(
                              'Cancel')), // onPressed parameter is optional by default will dismiss the ActionSheet
                    );
                  },
                )
              ],
            ),
          ],
        ),
        Container(
          height: 10,
        ),
        Image.asset(
          x,
          fit: BoxFit.contain,
        ),
        Container(
          height: 30,
        ),
        appInfo(x)
      ],
    );
  }

  _launchURL() async {
    const url = 'https://www.linkedin.com/in/nicolasio/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'nbarr026@fiu.edu',
      queryParameters: {'subject': ''});
}
