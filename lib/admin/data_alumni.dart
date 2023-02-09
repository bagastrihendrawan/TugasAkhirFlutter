import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DataAlumni extends StatefulWidget {
  const DataAlumni({super.key});

  @override
  State<DataAlumni> createState() => _DataAlumniState();
}

class _DataAlumniState extends State<DataAlumni> {
  @override
  Widget build(BuildContext context) {
    final namaController = TextEditingController();
    final emailController = TextEditingController();
    final angkatanController = TextEditingController();
    final ttlController = TextEditingController();
    final alamatController = TextEditingController();
    final hpController = TextEditingController();
    final jurusanController = TextEditingController();
    final hobbyController = TextEditingController();

    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection("user");
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Alumni"),
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
        child: Column(
          children: [
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
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Data Siswa",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.0,
            ),
            StreamBuilder<QuerySnapshot>(
              stream: users.snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                      children: snapshot.data!.docs
                          .map(
                            (e) => InkWell(
                              onTap: () => showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Form(
                                    child: Column(
                                      children: <Widget>[
                                        Card(
                                          color: Colors.grey,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Text("Nama :  "),
                                                Center(
                                                  child: Text(
                                                    e["name"],
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Card(
                                          color: Colors.grey,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Text("Jurusan :  "),
                                                Center(
                                                  child: Text(
                                                    e["jurusan"],
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Card(
                                          color: Colors.grey,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Text("Angkatan :  "),
                                                Center(
                                                  child: Text(
                                                    e["angkatan"],
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Card(
                                          color: Colors.grey,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Text("TTL :  "),
                                                Center(
                                                  child: Text(
                                                    e["ttl"],
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Card(
                                          color: Colors.grey,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Text("HandPhone :  "),
                                                Center(
                                                  child: Text(
                                                    e["hp"],
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Card(
                                          color: Colors.grey,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Text("Email :  "),
                                                Center(
                                                  child: Text(
                                                    e["email"],
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Card(
                                          color: Colors.grey,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Text("Hobby :  "),
                                                Center(
                                                  child: Text(
                                                    e["hobby"],
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  actions: [],
                                ),
                              ),
                              child: Card(
                                color: Colors.white60,
                                child: ListTile(
                                  title: Text(e['name'] ?? ""),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [],
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList());
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
