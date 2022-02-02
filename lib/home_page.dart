// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    double vw(double percent) {
      return (width / 100) * percent;
    }

    double vh(double percent) {
      return (height / 100) * percent;
    }

    const bgColor = Color(0xffe4f2fb);
    const shadowColor = Color(0xffCAE0EE);
    const textColor = Color(0xff8ba3b7);

    var innerShadow = BoxDecoration(
        color: Color(0xffe4f2fb),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.grey.shade500,
              shadowColor,
              shadowColor.withOpacity(0.5),
              Colors.white
            ],
            stops: [
              0,
              0.05,
              0.5,
              1
            ]));

    var outerShadow = BoxDecoration(
        color: Color(0xffe4f2fb),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
              color: Color(0xffCAE0EE),
              offset: Offset(20.0, 20.0),
              blurRadius: 20.0,
              spreadRadius: 1),
          BoxShadow(
              color: Colors.white,
              offset: Offset(-10.0, -10.0),
              blurRadius: 25.0,
              spreadRadius: 1),
        ]);

    return Scaffold(
      backgroundColor: Color(0xffe5f2fb),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: vw(75),
              height: vh(17),
              padding: EdgeInsets.all(20),
              decoration: outerShadow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text('Rounds',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: textColor,
                            )
                            //textAlign: TextAlign.center,
                            ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text('4',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: textColor,
                            )
                            //textAlign: TextAlign.center,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Time',
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: textColor),
                          //textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          '30 min',
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: textColor),
                          //textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Intensity',
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: textColor),
                          //textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.all(3),
                            height: vh(1.7),
                            child: Container(
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xffF5C979),
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15.0,
                                      spreadRadius: 1.0),
                                ],
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xffF5C979),
                                    Color(0xfff4a982)
                                  ],
                                ),
                              ),
                            ),
                            decoration: innerShadow),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
