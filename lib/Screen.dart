import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: Text('About'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Portofolio');
              },
              child: Text('portofolio'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contact');
              },
              child: Text('contact'),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Halo Nama saya Dhicky Mahesya Tegar Surya Pramana dan hobi saya Menggambar'
              ' ,Saya Adalah seorang Illustrator dan desainer grafis pemula',
              style: TextStyle(fontSize: 30, color: Colors.blueAccent),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: RaisedButton(
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => HomePage());
                Navigator.pop(context);
              },
              child: Text("Back"),
            ),
          )
        ],
      ),
    );
  }
}

class Portofolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('portofolio'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset(
                "asset/image/spy.jpg",
                width: 300,
                height: 300,
              ),
            ),
          ),
          Center(
            child: RaisedButton(
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => HomePage());
                Navigator.pop(context);
              },
              child: Text("Back"),
            ),
          )
        ],
      ),
    );
  }
}

class ContactOrang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Icon(
              Icons.account_circle,
              size: 50,
              color: Colors.blueAccent,
            ),
          ),
          Center(child: Text("NAMA : Dhicky Mahesya \nNIM : 362055401015 \nEMAIL : dhivanipramana@gmail.com \nIG : dhickymahesya pramana")),
          Center(
            child: RaisedButton(
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => HomePage());
                Navigator.pop(context);
              },
              child: Text("Back"),
            ),
          )
        ],
      ),
    );
  }
}
