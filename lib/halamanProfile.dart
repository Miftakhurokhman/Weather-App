import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'halamanKonversiMataUang.dart';
import 'halamanKonversiWaktu.dart';
import 'halamanUtama.dart';

class HalamanProfile extends StatefulWidget {
  const HalamanProfile({super.key});

  @override
  State<HalamanProfile> createState() => _HalamanProfileState();
}

class _HalamanProfileState extends State<HalamanProfile> {
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
                    image: siangHari ? AssetImage("assets/afternoonSky.jpg") : AssetImage("assets/nightSky.jpg"),
                    fit: BoxFit.cover)),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.075),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 120,),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(1000),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Miftakhurokhman",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 10,
                              color: Colors.black,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                      //SizedBox(height: MediaQuery.of(context).size.width * 0.025,),
                      Text(
                        "akusiapaaa",
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 18,
                          shadows: [
                            Shadow(
                              blurRadius: 10,
                              color: Colors.black,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width * 0.05,),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white.withOpacity(0.2)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.perm_identity_rounded,
                                    size: 30,
                                    color: Colors.black54,
                                  ),
                                  SizedBox(width: 15,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "NIM",
                                        style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        "124210058",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width * 0.05,),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white.withOpacity(0.2)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.meeting_room_rounded,
                                    size: 30,
                                    color: Colors.black54,
                                  ),
                                  SizedBox(width: 15,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Kelas",
                                        style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        "Mobile SI-A",
                                        style: TextStyle(
                                            color: Colors.black54,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width * 0.05,),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white.withOpacity(0.2)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.place_rounded,
                                    size: 30,
                                    color: Colors.black54,
                                  ),
                                  SizedBox(width: 15,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Lokasi cuaca default",
                                        style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        "Kab. Sleman",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width * 0.1,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.red
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.logout_rounded,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                      Text(
                                            "LOGOUT",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Positioned(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(100)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                "Profil",
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 10,
                                      color: Colors.black,
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ),
                    )),
              ),
            ],
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
        currentIndex: 3,
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
