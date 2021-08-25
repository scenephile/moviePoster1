import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_service_app/screens/poster_page.dart';
import 'package:travel_service_app/screens/search_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.home,
                        size: 30,
                      ),
                      color: Colors.grey[850],
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => HomePage(),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: IconButton(
                        icon: Icon(
                          Icons.search,
                          size: 30,
                        ),
                        color: Colors.grey[850],
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => SearchPage(),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.settings,
                        size: 30,
                      ),
                      color: Colors.grey[850],
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => HomePage(),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PosterPage(),
                  ),
                );
              },
              child: CarouselSlider(
                  items: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/1.jpg'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/2.jpg'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/3.jpg'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/4.jpg'),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 500.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayCurve: Curves.easeInOut,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
