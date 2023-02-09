import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/admin/daftar_user.dart';
import 'package:flutter_application_4/admin/kontak.dart';
import 'package:flutter_application_4/admin/data_alumni.dart';
import 'package:flutter_application_4/admin/ndelokalumni.dart';
import 'package:flutter_application_4/admin/profile.dart';
import 'package:flutter_application_4/admin/qr.dart';
// import 'package:flutter_application_4/berita/berita_ta.dart';
import 'package:flutter_application_4/main.dart';
import 'package:flutter_application_4/model/alert.dart';
import 'package:flutter_application_4/user/user.dart';
import 'package:flutter_application_4/webview/web_view.dart';
import 'package:flutter_application_4/webview/web_view1.dart';
import 'package:flutter_application_4/webview/web_view10.dart';
import 'package:flutter_application_4/webview/web_view11.dart';
import 'package:flutter_application_4/webview/web_view12.dart';
import 'package:flutter_application_4/webview/web_view2.dart';
import 'package:flutter_application_4/webview/web_view3.dart';
import 'package:flutter_application_4/webview/web_view4.dart';
import 'package:flutter_application_4/webview/web_view5.dart';
import 'package:flutter_application_4/webview/web_view6.dart';
import 'package:flutter_application_4/webview/web_view7.dart';
import 'package:flutter_application_4/webview/web_view8.dart';
import 'package:flutter_application_4/webview/web_view9.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class PageAdmin extends StatefulWidget {
  const PageAdmin({super.key});

  @override
  State<PageAdmin> createState() => _PageAdminState();
}

final GlobalKey<ScaffoldState> _scafoldKey = GlobalKey<ScaffoldState>();

class _PageAdminState extends State<PageAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafoldKey,
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(value: 1, child: Text("Profile")),
                PopupMenuItem(value: 2, child: Text("Contact")),
                // PopupMenuItem(value: 3, child: Text("Qr")),
              ];
            },
            onSelected: (value) {
              if (value == 1) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BagasBote(),
                ));
              } else if (value == 2) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Contact(),
                ));
                // } else if (value == 3) {
                //   Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => Qr(),
                //   ));
              }
            },
          )
        ],
        leading: IconButton(
            onPressed: () => _scafoldKey.currentState!.openDrawer(),
            icon: Icon(Icons.app_registration)),
        title: Text('MENU ADMIN'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color.fromARGB(255, 27, 95, 29),
                Color.fromARGB(255, 50, 174, 74),
              ])),
        ),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => WebView1(),
                ));
              },
              splashColor: Colors.blue,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/poltek.jpg",
                        fit: BoxFit.cover,
                      ),
                      // Text(
                      //   "home",
                      //   style: TextStyle(fontSize: 17.0),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => WebView2(),
                ));
              },
              splashColor: Colors.blue,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/kemen.png",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => WebView3(),
                ));
              },
              splashColor: Colors.blue,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/flutter.png",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => WebView4(),
                ));
              },
              splashColor: Colors.blue,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/kodehivee.png",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => WebView5(),
                ));
              },
              splashColor: Colors.blue,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/java.png",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => WebView6(),
                ));
              },
              splashColor: Colors.blue,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/python.png",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => WebView7(),
                ));
              },
              splashColor: Colors.blue,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/php.png",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => WebView8(),
                ));
              },
              splashColor: Colors.blue,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/mysql.jpg",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => WebView9(),
                ));
              },
              splashColor: Colors.blue,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/detikcom.jpg",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => WebView10(),
                ));
              },
              splashColor: Colors.blue,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/cnn.jpg",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => WebView11(),
                ));
              },
              splashColor: Colors.blue,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/tiktok.png",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => WebView12(),
                ));
              },
              splashColor: Colors.blue,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/yt.png",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                    Color.fromARGB(255, 27, 95, 29),
                    Color.fromARGB(255, 50, 174, 74)
                  ])),
              width: double.infinity,
              child: _drawerHeader(),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NdelokAlumni(),
                      ));
                    },
                    leading: Icon(
                      Icons.people,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    title: Text("Data Alumni"),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DaftarOrang(),
                      ));
                    },
                    leading: Icon(
                      Icons.person_add_alt,
                      color: Color.fromARGB(255, 57, 80, 196),
                    ),
                    title: Text("Tambah Akun"),
                  ),
                  // ListTile(
                  //   onTap: () {
                  //     Navigator.of(context).push(MaterialPageRoute(
                  //       builder: (context) => PageUser(),
                  //     ));
                  //   },
                  //   leading: Icon(
                  //     Icons.attachment_outlined,
                  //     color: Color.fromARGB(255, 154, 141, 32),
                  //   ),
                  //   title: Text("Lain-lain"),
                  // ),
                  Divider(
                    color: Colors.amber,
                    height: 25,
                    thickness: 2,
                  ),
                  ListTile(
                    onTap: () async {
                      // Cahyadi(context);
                      await FirebaseAuth.instance.signOut();
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                    },
                    leading: Icon(Icons.logout),
                    iconColor: Color.fromARGB(255, 207, 44, 32),
                    title: Text("Keluar"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawerHeader() {
    return DrawerHeader(
        child: Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              "assets/images/bagas.jpg",
              height: 100,
              scale: 2,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Bagas Tri Hendrawan",
          ),
        ],
      ),
    ));
  }
}
