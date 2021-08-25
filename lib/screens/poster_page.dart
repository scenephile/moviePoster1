import 'package:flutter/material.dart';

class PosterPage extends StatefulWidget {
  @override
  _PosterPageState createState() => _PosterPageState();
}

class _PosterPageState extends State<PosterPage> {
  Color mainColor = Color(0xFFf36f7c);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 20,),
          color: Colors.grey[850],
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
