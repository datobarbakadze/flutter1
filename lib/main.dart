import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Card()
  ));
}
class Card extends StatefulWidget {
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blueGrey[900],
      appBar: AppBar(
        title:Text("Card App",
          style: TextStyle(
            color:Colors.white,
          )
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
            level += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding:EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/king.png'),
                radius: 70.0,
              ),
            ),
            Divider(
              height:60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
               style:TextStyle(
                 color:Colors.white,
                 letterSpacing: 2.0,
               )
            ),
            SizedBox(height: 5.0),
            Text(
                'Dato',
                style:TextStyle(
                  color:Colors.pink,
                  letterSpacing: 2.0,
                  fontSize:28.0,
                  fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 20.0),
            Text(
                'CURRENT LEVEL',
                style:TextStyle(
                  color:Colors.white,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 5.0),
            Text(
                '$level',
                style:TextStyle(
                    color:Colors.pink,
                    letterSpacing: 2.0,
                    fontSize:28.0,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color:Colors.white
                ),
                SizedBox(width:10.0),
                Text(
                  'bdato269@gmail.com',
                  style:TextStyle(
                    color: Colors.white,
                    fontSize:18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
          ],
        )
      )
    );
  }
}


