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
    const textColor = Color(0xffa0bbd3);
    const textColorDark = Color(0xff4a707e);

    Widget Navbar() {
      return Container(
        width: vw(100),
        height: vh(10),
        // color: Colors.yellow,
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                child: Icon(
              Icons.arrow_back,
              size: 35,
              color: textColorDark,
            )),
            Text('F I T N E S S',
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  color: textColorDark,
                )
                //textAlign: TextAlign.center,
                ),
            Container(
                child: Icon(
              Icons.person_outline,
              size: 37,
              color: textColorDark,
            )),
          ],
        ),
      );
    }

    innerShadow(double radius) {
      return BoxDecoration(
          color: Color(0xffe4f2fb),
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                // Colors.grey.shade500,
                shadowColor,
                shadowColor.withOpacity(0.25),
                shadowColor.withOpacity(0.30),
                Colors.white
              ],
              stops: [
                0,
                0.15,
                0.80,
                1
              ]));
    }

    BoxDecoration outerShadow(double radius) {
      return BoxDecoration(
          color: Color(0xffe4f2fb),
          borderRadius: BorderRadius.all(Radius.circular(radius)),
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
    }

    Widget videoCard(String imgurl, String title) {
      return Container(
        // color: Colors.yellow,
        margin: EdgeInsets.symmetric(horizontal: 35, vertical: 22),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(right: 15),
                decoration: outerShadow(15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    imgurl,
                    height: 80,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      color: textColorDark),
                  //textAlign: TextAlign.center,
                ),
                Text(
                  '0:40',
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      color: textColor),
                  //textAlign: TextAlign.center,
                ),
              ],
            ),
            Expanded(child: Container()),
            Container(
              height: 65,
              width: 65,
              decoration: outerShadow(15),
              child: Icon(
                Icons.play_arrow,
                size: 25,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffe5f2fb),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Navbar(),
              Container(
                width: vw(75),
                // color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Day 1',
                            style: GoogleFonts.poppins(
                              fontSize: 35,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.normal,
                              color: textColorDark,
                            )),
                        Text('Strength',
                            style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: textColor,
                            )),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: vw(20),
                      height: vh(5),
                      child: Text('Next',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            color: textColorDark,
                          )),
                      decoration: outerShadow(50),
                    )
                  ],
                ),
              ),

              //Neu Card start
              Container(
                width: vw(75),
                height: vh(17),
                padding: EdgeInsets.all(20),
                decoration: outerShadow(10),
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
                                color: textColorDark,
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
                                color: textColorDark),
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
                                width: 60,
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
                              decoration: innerShadow(20)),
                        )
                      ],
                    )
                  ],
                ),
              ),

              //video list start
              Container(
                width: vw(100),
                height: vh(45),
                // color: Colors.yellow,
                decoration: innerShadow(30),
                child: Column(
                  children: [
                    videoCard(
                        "https://images.pexels.com/photos/841130/pexels-photo-841130.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                        "Deadlift"),
                    videoCard(
                        "https://assets.gqindia.com/photos/5cdc548278e364ceaf6fec78/master/pass/triceps-top-image.jpg",
                        "Back"),
                    videoCard(
                        "https://cdn.mos.cms.futurecdn.net/q3ywAs578KorPaqqAGwbjJ-1200-80.jpg",
                        "Chest")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
