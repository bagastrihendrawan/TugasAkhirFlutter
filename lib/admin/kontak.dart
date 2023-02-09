import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color.fromARGB(255, 27, 95, 29),
                Color.fromARGB(255, 50, 174, 74)
              ])),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
            10.0,
          ),
          child: Column(
            children: <Widget>[
              Text(""),
              _buildSocialsRow(),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildSocialsRow() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: [
            SizedBox(
              height: 20,
            ),
          ],
        ),
        IconButton(
          color: Color.fromARGB(255, 14, 159, 82),
          icon: Icon(FontAwesomeIcons.whatsapp),
          onPressed: () {
            _launchUrl("https://wa.me/625156334989");
          },
        ),
        IconButton(
          color: Color.fromARGB(255, 33, 40, 243),
          icon: Icon(FontAwesomeIcons.facebookF),
          onPressed: () {
            _launchUrl("https://facebook.com/kodehive");
          },
        ),
        SizedBox(
          height: 15,
        ),
        IconButton(
          color: Color.fromARGB(255, 255, 0, 0),
          icon: Icon(FontAwesomeIcons.youtube),
          onPressed: () {
            _launchUrl("https://youtube.com");
          },
        ),
        SizedBox(
          height: 15,
        ),
        IconButton(
          color: Colors.indigo,
          icon: Icon(FontAwesomeIcons.github),
          onPressed: () {
            _launchUrl("https://github.com/bagastrihendrawan");
          },
        ),
        SizedBox(
          height: 15,
        ),
        IconButton(
          color: Color.fromARGB(255, 255, 0, 123),
          icon: Icon(FontAwesomeIcons.instagram),
          onPressed: () {
            _launchUrl("https://instagram.com/bagasbote");
          },
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Future<void> _launchUrl(String s) async {
    launch(s);
  }
}
