import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/model/alert.dart';
import 'package:flutter_application_4/service/register_auth.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class DaftarOrang extends StatefulWidget {
  const DaftarOrang({super.key});

  @override
  State<DaftarOrang> createState() => _DaftarOrangState();
}

FirebaseAuth user = FirebaseAuth.instance;
var userRegis = user.currentUser;

class _DaftarOrangState extends State<DaftarOrang> {
  final _registerFormKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailContoller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection("user");
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Akun User"),
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
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              // SizedBox(
              //   height: 5.0,
              // ),
              Row(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/poltek.jpg",
                      width: 60,
                    ),
                  ),
                  Text(
                    "Politeknik Gajah Tunggal",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                child: Image.asset("assets/images/foto2.jpg"),
              ),
              SizedBox(
                height: 24.0,
              ),
              TextField(
                controller: _nameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Masukan Nama",
                  prefixIcon: Icon(
                    Icons.person,
                    // color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 26.0,
              ),
              TextField(
                controller: _emailContoller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Masukan Email",
                  prefixIcon: Icon(
                    Icons.mail,
                    // color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 26.0,
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Masukan Password",
                  prefixIcon: Icon(
                    Icons.lock,
                    // color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: double.infinity,
                child: RawMaterialButton(
                  fillColor: Color.fromARGB(255, 85, 116, 86),
                  elevation: 0.0,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  onPressed: () async {
                    DodiApa(context);

                    User? user = await RegisAuth.registerUser(
                      email: _emailContoller.text,
                      password: _passwordController.text,
                    );

                    await users.doc(user!.uid).set({
                      "name": _nameController.text,
                      "email": _emailContoller.text,
                      "jurusan": "",
                      "angkatan": "",
                      "ttl": "",
                      "hobby": "",
                      "hp": "",
                      "id": user.uid
                    });
                  },
                  // },
                  child: Text(
                    "DAFTAR",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
