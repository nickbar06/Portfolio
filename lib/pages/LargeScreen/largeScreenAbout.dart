import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LargeScreenAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: EdgeInsets.only(top: 100),
          height: 600,
          width: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2000),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Colors.grey[300]],
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 250),
            child: Image(
              height: 600,
              fit: BoxFit.fill,
              image: AssetImage('images/nick.png'),
            )),
        Positioned(
            left: -280,
            top: 200,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              elevation: 7,
              child: Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '👋',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello, I am,',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300)),
                            )
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nicolas ',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )),
        Positioned(
          left: -280,
          bottom: -15,
          child: Container(
            // margin: EdgeInsets.only(top: 100),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2000),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.white, Colors.grey[300]],
              ),
            ),
          ),
        ),
        Positioned(
          left: -280,
          bottom: 300,
          child: Container(
            // margin: EdgeInsets.only(top: 100),
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2000),
                color: Colors.grey[400]),
          ),
        ),
        Positioned(
          left: -480,
          bottom: 375,
          child: Container(
              // margin: EdgeInsets.only(top: 100),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2000),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.white, Colors.grey[300]],
                ),
              )),
        ),
        Positioned(
            left: 550,
            top: 25,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: new Container(
                      width: 100.0,
                      height: 100.0,
                      margin:
                          const EdgeInsets.only(bottom: 8.0, left: 4, right: 4),
                      decoration: new BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 4.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new AssetImage("images/cellphone.png")))),
                ),
                Container(
                  height: 13,
                ),
                Text(
                  'MOBILE DEV',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                      textStyle:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w500)),
                )
              ],
            )),
        Positioned(
            left: 680,
            top: 175,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: new Container(
                      width: 160.0,
                      height: 160.0,
                      margin:
                          const EdgeInsets.only(bottom: 8.0, left: 4, right: 4),
                      decoration: new BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 4.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new AssetImage("images/pc.png")))),
                ),
                Container(
                  height: 13,
                ),
                Text(
                  'APPLICATION DEV',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                      textStyle:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w500)),
                )
              ],
            )),
        Positioned(
            left: 680,
            top: 450,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: new Container(
                      width: 120.0,
                      height: 120.0,
                      margin:
                          const EdgeInsets.only(bottom: 8.0, left: 4, right: 4),
                      decoration: new BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 4.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new AssetImage("images/api.jpg")))),
                ),
                Container(
                  height: 13,
                ),
                Text(
                  'BACKEND SOLUTIONS',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                      textStyle:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w500)),
                )
              ],
            )),
      ],
    );
  }
}
