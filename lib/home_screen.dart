import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this. email});
  final String email;

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("BIODATA"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(children: [Icon(Icons.person), Text("BIODATA")]),
          Text("NAMA : Abyan Farras Yudhistira"),
          Text("Email : $email"),
          Text("NIM : 230101002"),
          Text("Kelas : SI 23A1"),
          Text("Prodi : Sistem Informasi"),
          Text("Hobi : Mengedit sesuatu jika ada inspirasi"),
        ],
      ),
    );
}
}