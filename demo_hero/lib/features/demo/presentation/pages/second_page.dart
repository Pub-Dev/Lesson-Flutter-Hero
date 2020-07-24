import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final TextStyle titleStyle = TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color: Colors.white);
  final TextStyle descriptionStyle = TextStyle(fontSize: 20, color: Colors.grey);

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
                Positioned(
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white,),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  top: 24,
                  left: 8,
                ),
              ]
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Bla bla bla bla bla bla bla bla Bla bla bla bla bla bla bla bla Bla bla bla bla bla bla bla bla Bla bla bla bla bla bla bla bla ', style: descriptionStyle,),
            )
          ],
        ),
      ),
    );
  }
}