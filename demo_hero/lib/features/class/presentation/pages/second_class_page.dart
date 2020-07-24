import 'package:flutter/material.dart';

class SecondClassPage extends StatelessWidget {
  final TextStyle titleStyle = TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Hero(
                  tag: 'image_hero',
                  child: Image.asset('images/image.jpg', 
                    height: 250,
                    width: 500,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  child: Hero(
                    tag: 'text_hero',
                    child: Material(
                      color: Colors.transparent,
                      child: Text('Bahamas', style: titleStyle)
                    )
                  ),
                  bottom: 16,
                  left: 16,
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}