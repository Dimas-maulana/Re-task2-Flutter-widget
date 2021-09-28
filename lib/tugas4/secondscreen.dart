import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  final String text1, text2, text3, text4;

  const Data(
       {Key? key, required this.text1, required this.text2, required this.text3, required this.text4})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen"), 
      backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Nama : ', style: TextStyle(
                    fontSize: 15,
                  ),
                  ),
                  Text(text1),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Alamat : ', style: TextStyle(
                    fontSize: 15,
                  ),
                  ),
                  Text(text2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Email : ', style: TextStyle(
                    fontSize: 15,
                  ),
                  ),
                  Text(text3),
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Nomor Telepon : ', style: TextStyle(
                    fontSize: 15,
                  ),
                  ),
                  Text(text4),
                ],
              ),
            ],
        ),
      ),
    );
  }
}