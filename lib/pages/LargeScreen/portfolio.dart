import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Portfolio/pages/Layout/appVM.dart';
import 'package:provider/provider.dart';

class LargeScreenPortfolio extends StatelessWidget {
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
    'images/crm.png'
  ];

  @override
  Widget build(BuildContext context) {
    var appVm = Provider.of<AppVM>(context, listen: true);

    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 6, top: 80),
              child: CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    height: 710.0,
                    onPageChanged: (index, reason) {
                      appVm.setPic = index;
                    }),
                items: images.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          height: MediaQuery.of(context).size.height,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Column(
                            children: [
                              Image.asset(
                                i,
                                fit: BoxFit.fitHeight,
                                height: 610,
                              ),
                              Container(
                                height: 25,
                              ),
                              appInfo(i)
                            ],
                          ));
                    },
                  );
                }).toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.map((url) {
                int index = images.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: appVm.getPic == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
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
    } else if (x == "images/crm.png") {
      return Column(children: [
        Text(
          "Resident CRM Application",
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
}
