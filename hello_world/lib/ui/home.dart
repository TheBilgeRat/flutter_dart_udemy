import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  _tapButton() {
    debugPrint('Tapped Button');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade100,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.ac_unit),
              onPressed: () => debugPrint('AC UNIT TAPPED')),
          IconButton(icon: Icon(Icons.access_alarms), onPressed: _tapButton),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightGreenAccent,
          onPressed: () => debugPrint('FLOATING ACTION BUTTON'),
          child: Icon(Icons.missed_video_call)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add_alert), label: 'HOWDY'),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'FUUUCK')
        ],
        onTap: (int index) => debugPrint('Tapped item: $index'),
      ),
      backgroundColor: Colors.redAccent.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: _tapButton,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    border: new Border.all(color: Colors.white, width: 1.5),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text('CLICK ME',
                        style: TextStyle(fontSize: 18, color: Colors.white))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: _tapButton,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    border: new Border.all(color: Colors.white, width: 1.5),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text('CLICK ME TOO',
                        style: TextStyle(fontSize: 18, color: Colors.white))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: _tapButton,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    border: new Border.all(color: Colors.white, width: 1.5),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text('CLICK ME THREE',
                        style: TextStyle(fontSize: 18, color: Colors.black38))),
              ),
            ),
            CustomButton()
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          final snackBar = SnackBar(
            content: Text('MAMMA MIA'),
            backgroundColor: Colors.tealAccent,
          );
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: BorderRadius.circular(8.0)),
          child: Text('Button'),
        ));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.deepOrange,
        child: Center(
          child: Text("WOWZERS!!!",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                fontStyle: FontStyle.italic,
              )),
        ));
  }
}