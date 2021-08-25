import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_service_app/screens/home_page.dart';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Color mainColor = Color(0xFFf36f7c);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Container(),
              Container(
                child: Positioned(
                  bottom: 30,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => HomePage(),
                          ),
                        );
                      },
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                left: 20,
                              ),
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.redAccent,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_right_alt_rounded,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 350,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'FIND & RATE YOUR',
                    style: GoogleFonts.roboto(
                      height: 1.2,
                      textStyle: TextStyle(
                        color: Colors.grey[850],
                        fontWeight: FontWeight.bold,
                        fontSize: 38,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 305,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'POSTER',
                    style: GoogleFonts.roboto(
                      height: 1.2,
                      textStyle: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 38,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
