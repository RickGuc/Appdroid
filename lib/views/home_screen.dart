import 'package:cartella_clinica/views/add_esezioni_screen.dart';
import 'package:cartella_clinica/views/add_hospital_screen.dart';
import 'package:cartella_clinica/views/add_therapy_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AddHospitalScreen(),
                  ),
                );
              },
              child: const Text('Aggiungi ospedale'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AddTherapyScreen(),
                  ),
                );
              },
              child: const Text('Aggiungi esami'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AddEsenzioniScreen(),
                  ),
                );
              },
              child: const Text('Aggiungi esenzioni'),
            ),
          ],
        ),
      ),
    );
  }
}
