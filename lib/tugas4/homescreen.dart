import 'package:flutter/material.dart';
import 'package:flutter_application_3/tugas4/secondscreen.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // ignore: non_constant_identifier_names
  final Controller1 = TextEditingController();
  // ignore: non_constant_identifier_names
  final Controller2 = TextEditingController();
  // ignore: non_constant_identifier_names
  final Controller3 = TextEditingController();
  // ignore: non_constant_identifier_names
  final Controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        leading: const Icon(Icons.list),
        backgroundColor: Colors.blue,
        ),
          body: ListView(
            children: <Widget>[
              Container(
                padding:  const EdgeInsets.all(10.0),
                child:  Column(
                  children: <Widget>[
                    const Text('Formulir Pendaftaran Vaksin', style: TextStyle(
                      fontSize: 20,
                    ),
                    ),

                  Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                    const Padding(padding: EdgeInsets.only(bottom: 20.0),),
                    TextFormField(
                      controller: Controller1,
                      autofocus: true,
                      decoration: InputDecoration(
                        hintText: "Nama Lengkap",
                        labelText: "Nama Lengkap",
                        icon: const Icon(Icons.people),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                      ),
                      validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nama tidak boleh kosong';
                      }
                      return null;
                    },
                    ),

                    const Padding(padding: EdgeInsets.only(top: 20.0),),
                    TextFormField(
                      controller: Controller2,
                      decoration: InputDecoration(
                        hintText: "Alamat",
                        labelText: "Alamat",
                        icon: const Icon(Icons.home),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                      ),
                      validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Alamat tidak boleh kosong';
                      }
                      return null;
                    },
                    ),

                    const Padding(padding: EdgeInsets.only(top: 20.0),),
                    TextFormField(
                      controller: Controller3,
                      decoration: InputDecoration(
                        hintText: "Email",
                        labelText: "Email",
                        icon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                      ),
                      validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email tidak boleh kosong';
                      }
                      return null;
                    },
                    ),

                    const Padding(padding: EdgeInsets.only(top: 20.0),),
                    TextFormField(
                      controller: Controller4,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "No. Telepon",
                        labelText: "No. Telepon",
                        icon: const Icon(Icons.phone),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                      ),
                      validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'No. Telepon tidak boleh kosong';
                      }
                      return null;
                    },
                    ),

                        const SizedBox(height: 20),
                        Padding(
                            padding:
                            const EdgeInsets.symmetric(vertical: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue,
                                    side: const BorderSide(
                                        color: Colors.blue,
                                        width: 2.0,
                                        style: BorderStyle.solid),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(5.0)),
                                  ),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      _kirimdata(
                                          context,
                                          Controller1.text,
                                          Controller2.text,
                                          Controller3.text,
                                          Controller4.text,
                                        );
                                    }
                                  },
                                  child: const Text('Kirim Data'),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue,
                                    side: const BorderSide(
                                        color: Colors.blue,
                                        width: 2.0,
                                        style: BorderStyle.solid),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(5.0)),
                                  ),
                                  onPressed: () {
                                    _kirimdata(context, '', '', '', '',);
                                  },
                                  child:
                                  const Text('Jangan kirim Data'),
                                ),
                              ],
                            ),
                          ),
                          ],
                        ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
            );
          }
  }

  void _kirimdata(BuildContext context, String text1, String text2,
      String text3, String text4) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              Data(
                text1: text1,
                text2: text2,
                text3: text3,
                text4: text4,
              ),
        ),
      );
  }
