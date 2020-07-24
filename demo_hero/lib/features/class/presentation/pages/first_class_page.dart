import 'package:flutter/material.dart';

class FirstClassPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Card(),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final TextStyle titleStyle = TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color: Colors.orangeAccent[400]);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).pushNamed('/class/second')
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 150,
        child: Row(
          children: <Widget>[
            Hero(
              tag: 'image_hero',
              child: ClipRRect(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(90), topRight: Radius.circular(90)),
                child: Image.asset('images/image.jpg', 
                  width: 150, 
                  height: 150, 
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Hero(
              tag: 'text_hero',
              child: Material(
                color: Colors.transparent,
                child: Text('Bahamas', style: titleStyle,)
              ),
            )
          ],
        ),
      ),
    );
  }
}