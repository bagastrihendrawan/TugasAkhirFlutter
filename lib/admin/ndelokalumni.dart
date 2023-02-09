import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_4/model/alert.dart';

class NdelokAlumni extends StatefulWidget {
  const NdelokAlumni({super.key});

  @override
  State<NdelokAlumni> createState() => _NdelokAlumniState();
}

class _NdelokAlumniState extends State<NdelokAlumni> {
  @override
  Widget build(BuildContext context) {
    final namaController = TextEditingController();
    final emailController = TextEditingController();
    final angkatanController = TextEditingController();
    final ttlController = TextEditingController();
    final alamatController = TextEditingController();
    final hpController = TextEditingController();
    final hobbyController = TextEditingController();
    final jurusanController = TextEditingController();
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection("user");
    return Scaffold(
      // resizeToAvoidBottomInset: false,
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
                            (e) => Card(
                              color: Colors.white60,
                              child: ListTile(
                                title: Text(e['name'] ?? ""),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        Icons.app_registration_rounded,
                                        color: Colors.green,
                                      ),
                                      onPressed: () {
                                        namaController.text = e["name"];
                                        jurusanController.text = e["jurusan"];
                                        angkatanController.text = e["angkatan"];
                                        ttlController.text = e["ttl"];
                                        hpController.text = e["hp"];
                                        emailController.text = e["email"];
                                        hobbyController.text = e["hobby"];

                                        showDialog(
                                          context: context,
                                          builder: (context) =>
                                              SingleChildScrollView(
                                            child: AlertDialog(
                                              title: Form(
                                                child: Column(
                                                  children: <Widget>[
                                                    TextFormField(
                                                      controller:
                                                          namaController,
                                                      decoration:
                                                          const InputDecoration(
                                                              icon: Icon(
                                                                  Icons.person),
                                                              hintText:
                                                                  "Masukan Nama"),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    TextFormField(
                                                      controller:
                                                          jurusanController,
                                                      decoration:
                                                          const InputDecoration(
                                                              icon: Icon(Icons
                                                                  .category_outlined),
                                                              hintText:
                                                                  "Jurusan"),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    TextFormField(
                                                      controller:
                                                          angkatanController,
                                                      decoration:
                                                          const InputDecoration(
                                                              icon: Icon(Icons
                                                                  .account_tree_rounded),
                                                              hintText:
                                                                  "Angkatan"),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    TextFormField(
                                                      controller: ttlController,
                                                      decoration: const InputDecoration(
                                                          icon: Icon(Icons
                                                              .date_range_outlined),
                                                          hintText:
                                                              "Tempat Tanggal Lahir"),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    TextFormField(
                                                      controller: hpController,
                                                      decoration:
                                                          const InputDecoration(
                                                              icon: Icon(Icons
                                                                  .phone_android),
                                                              hintText:
                                                                  "Nomor HP"),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    TextFormField(
                                                      controller:
                                                          emailController,
                                                      decoration:
                                                          const InputDecoration(
                                                              icon: Icon(
                                                                  Icons.email),
                                                              hintText:
                                                                  "Masukan Email"),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    TextFormField(
                                                      controller:
                                                          hobbyController,
                                                      decoration:
                                                          const InputDecoration(
                                                              icon: Icon(Icons
                                                                  .auto_awesome),
                                                              hintText:
                                                                  "Hobby"),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              actions: [
                                                IconButton(
                                                  onPressed: () {
                                                    Wiguna(context);
                                                    users.doc(e.id).update(
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

                                                    namaController.clear();
                                                    jurusanController.clear();
                                                    angkatanController.clear();
                                                    ttlController.clear();
                                                    hpController.clear();
                                                    emailController.clear();
                                                    hobbyController.clear();

                                                    // Navigator.of(context).pop();
                                                  },
                                                  icon: const Icon(
                                                    Icons.change_circle_rounded,
                                                    color: Colors.green,
                                                    size: 30,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          print("Data Berhasil di Hapus");

                                          AwesomeDialog(
                                            context: context,
                                            dialogType: DialogType.warning,
                                            headerAnimationLoop: false,
                                            animType: AnimType.bottomSlide,
                                            title: 'PERINGATAN !!',
                                            desc:
                                                'Apa Data ini ingin di hapus ?',
                                            buttonsTextStyle: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                            showCloseIcon: true,
                                            btnCancelOnPress: () {
                                              Navigator.pop(context);
                                            },
                                            btnOkOnPress: () {
                                              users.doc(e.id).delete();
                                            },
                                          ).show();
                                        },
                                        icon: Icon(
                                          Icons.delete_forever,
                                          color: Colors.red,
                                        )),
                                  ],
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
