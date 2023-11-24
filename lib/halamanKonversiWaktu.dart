import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'halamanKonversiMataUang.dart';
import 'halamanProfile.dart';
import 'halamanUtama.dart';

class HalamanWaktu extends StatefulWidget {
  const HalamanWaktu({super.key});

  @override
  State<HalamanWaktu> createState() => _HalamanWaktuState();
}

class _HalamanWaktuState extends State<HalamanWaktu> {
  bool siangHari = false;

  @override
  void initState() {
    DateTime waktuSekarang = DateTime.now();
    int jamSekarang = waktuSekarang.hour;
    super.initState();
    if (jamSekarang > 6 && jamSekarang < 18) {
      siangHari = true;
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: siangHari
                        ? AssetImage("assets/afternoonSky.jpg")
                        : AssetImage("assets/nightSky.jpg"),
                    fit: BoxFit.cover)),
          ),
           Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                        children: [

                        ],
                      ),
                    )
                  ],
                ),
              ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black54
        ),
        fixedColor: Colors.black54,
        unselectedItemColor: Colors.black26,
        currentIndex: 1,
        onTap: (int index) {
          if (index == 0) {
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (BuildContext context) =>
                    HalamanUtama(idWilayah: "501187", longitude: "110.380000", latitude: "-7.720000", kabupaten: "Kab. Sleman")));
          }
          else if (index == 1) {
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (BuildContext context) =>
                    HalamanWaktu()));
          }
          else if (index == 2) {
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (BuildContext context) =>
                    HalamanMataUang()));
          }
          else if (index == 3) {
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (BuildContext context) =>
                    HalamanProfile()));
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              size: 30,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.access_time_filled_rounded,
              size: 30,
            ),
            label: "Time",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.monetization_on_rounded,
              size: 30,
            ),
            label: "Money",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_rounded,
              size: 30,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
