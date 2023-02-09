import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/model/alert.dart';

class DetailAkun extends StatefulWidget {
  const DetailAkun({super.key});

  @override
  State<DetailAkun> createState() => _DetailAkunState();
}

class _DetailAkunState extends State<DetailAkun> {
  CollectionReference users = FirebaseFirestore.instance.collection("user");
  User? user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    var namaController = TextEditingController();
    var emailController = TextEditingController();
    var angkatanController = TextEditingController();
    var ttlController = TextEditingController();
    var alamatController = TextEditingController();
    var hpController = TextEditingController();
    var hobbyController = TextEditingController();
    var jurusanController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Detail Akun"),
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
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            // color: Colors.grey,
            child: StreamBuilder<DocumentSnapshot>(
              stream: FirebaseFirestore.instance
                  .collection("user")
                  .doc(user!.uid)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Card(
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Nama :  ",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Center(
                                child: Text(
                                  snapshot.data!['name'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Jurusan :  ",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Center(
                                child: Text(
                                  snapshot.data!['jurusan'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Angkatan :  ",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Center(
                                child: Text(
                                  snapshot.data!['angkatan'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "TTL :  ",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Center(
                                child: Text(
                                  snapshot.data!['ttl'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "HandPhone :  ",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Center(
                                child: Text(
                                  snapshot.data!['hp'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Email :  ",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Center(
                                child: Text(
                                  snapshot.data!['email'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Hobby :  ",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Center(
                                child: Text(
                                  snapshot.data!['hobby'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Text("User Application");
                }
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => SingleChildScrollView(
                      physics: BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      child: AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0))),
                        contentPadding: EdgeInsets.only(top: 10.0),
                        title: StreamBuilder<DocumentSnapshot>(
                            stream: FirebaseFirestore.instance
                                .collection('user')
                                .doc(user!.uid)
                                .snapshots(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                namaController.text = snapshot.data!["name"];
                                jurusanController.text =
                                    snapshot.data!["jurusan"];
                                angkatanController.text =
                                    snapshot.data!["angkatan"];
                                ttlController.text = snapshot.data!["ttl"];
                                hpController.text = snapshot.data!["hp"];
                                emailController.text = snapshot.data!["email"];
                                hobbyController.text = snapshot.data!["hobby"];

                                return Center(
                                  child: SingleChildScrollView(
                                    child: Form(
                                      child: Column(
                                        children: <Widget>[
                                          ListTile(
                                            title: Text(
                                              "Edit Akun",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            trailing: IconButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                icon: Icon(
                                                  Icons.close,
                                                  color: Colors.black,
                                                )),
                                          ),
                                          TextFormField(
                                            controller: namaController,
                                            decoration: const InputDecoration(
                                                icon: Icon(Icons.people),
                                                hintText: "Nama"),
                                            textAlign: TextAlign.start,
                                          ),
                                          TextFormField(
                                            controller: jurusanController,
                                            decoration: const InputDecoration(
                                                icon: Icon(
                                                    Icons.category_outlined),
                                                hintText: "Jurusan"),
                                            textAlign: TextAlign.start,
                                          ),
                                          TextFormField(
                                            controller: angkatanController,
                                            decoration: const InputDecoration(
                                                icon: Icon(
                                                    Icons.account_tree_rounded),
                                                hintText: "Angkatan"),
                                            textAlign: TextAlign.start,
                                          ),
                                          TextFormField(
                                            controller: ttlController,
                                            decoration: const InputDecoration(
                                                icon: Icon(
                                                    Icons.date_range_outlined),
                                                hintText: "TTL"),
                                            textAlign: TextAlign.start,
                                          ),
                                          TextFormField(
                                            controller: hpController,
                                            decoration: const InputDecoration(
                                                icon: Icon(Icons.phone_android),
                                                hintText: "Nomor HP"),
                                            textAlign: TextAlign.start,
                                          ),
                                          TextFormField(
                                            controller: emailController,
                                            decoration: const InputDecoration(
                                                icon: Icon(Icons.email),
                                                hintText: "Email"),
                                            textAlign: TextAlign.start,
                                          ),
                                          TextFormField(
                                            controller: hobbyController,
                                            decoration: const InputDecoration(
                                                icon: Icon(Icons.auto_awesome),
                                                hintText: "Hobby"),
                                            textAlign: TextAlign.start,
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          ListTile(
                                              trailing: IconButton(
                                                  onPressed: () {
                                                    Wiguna(context);
                                                    print(
                                                        "Data Berhasil di Update");
                                                    users
                                                        .doc(snapshot.data!.id)
                                                        .update(
                                                      {
                                                        'name':
                                                            namaController.text,
                                                        'jurusan':
                                                            jurusanController
                                                                .text,
                                                        'angkatan':
                                                            angkatanController
                                                                .text,
                                                        'ttl':
                                                            ttlController.text,
                                                        'hp': hpController.text,
                                                        'email': emailController
                                                            .text,
                                                        'hobby': hobbyController
                                                            .text,
                                                      },
                                                    );

                                                    // Navigator.of(context).pop();
                                                  },
                                                  icon: Icon(
                                                    Icons.rotate_left_outlined,
                                                    size: 40,
                                                    color: Color.fromARGB(
                                                        255, 82, 165, 86),
                                                  ))),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                            }),
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 72, 66, 22)
                            .withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Edit Account',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
