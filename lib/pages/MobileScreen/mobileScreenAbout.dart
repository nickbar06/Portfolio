import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileScreenAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 30,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: new Container(
                width: 160.0,
                height: 160.0,
                margin: const EdgeInsets.only(bottom: 8.0, left: 4, right: 4),
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
          ),
          Container(
            height: 30,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: new Container(
                width: 160.0,
                height: 160.0,
                margin: const EdgeInsets.only(bottom: 8.0, left: 4, right: 4),
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
          ),
          Container(
            height: 30,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: new Container(
                width: 160.0,
                height: 160.0,
                margin: const EdgeInsets.only(bottom: 8.0, left: 4, right: 4),
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
      ),
    );
  }
}
