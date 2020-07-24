import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Card(),
        ]
      )
    );
  }
}

class Card extends StatelessWidget {
  final TextStyle titleStyle = TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color: Colors.orangeAccent[400]);
  final TextStyle descriptionStyle = TextStyle(fontSize: 20, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).pushNamed('/pages/second')
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 5,
              spreadRadius: 5,
              offset: Offset(0, 3)
            )
          ]
        ),
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
            Container(
              width: 200,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 8, right: 16, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Hero(
                      tag: 'text_hero',
                      child: Material(
                        color: Colors.transparent,
                        child: Text('Bahamas', style: titleStyle,)
                      )
                    ),
                    Text('Um lugar incrivel para passar as suas ferias.', style: descriptionStyle)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}