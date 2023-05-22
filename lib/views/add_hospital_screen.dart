import 'package:flutter/material.dart';

class AddHospitalScreen extends StatelessWidget {
  const AddHospitalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('Aggiungi ospedale'),
    ));
  }
}
