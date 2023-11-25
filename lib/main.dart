import 'package:flutter/material.dart';
import 'package:weather_app/halamanKonversiMataUang.dart';
import 'package:weather_app/halamanKonversiWaktu.dart';
import 'package:weather_app/halamanLogin.dart';
import 'package:weather_app/halamanUtama.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
        HalamanMataUang()
      //HalamanWaktu()
      //HalamanLogin()
      //HalamanUtama(idWilayah: "501187", longitude: "110.380000", latitude: "-7.720000", kabupaten: "Kab. Sleman")
    );
  }
}