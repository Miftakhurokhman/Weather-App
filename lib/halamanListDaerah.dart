import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/halamanUtama.dart';
import 'package:weather_app/model/modelDaerah.dart';

import 'api_data_source.dart';
import 'halamanKonversiMataUang.dart';
import 'halamanKonversiWaktu.dart';
import 'halamanProfile.dart';

class HalamanListDaerah extends StatefulWidget {
  const HalamanListDaerah({super.key});

  @override
  State<HalamanListDaerah> createState() => _HalamanListDaerahState();
}

class _HalamanListDaerahState extends State<HalamanListDaerah> {
  bool isFirstTile = true;
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
          Container(
            child: FutureBuilder(
              future: ApiDataSource.instance.getWilayah(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<ModelDaerah> dataWilayah = [];
                  for (var data in snapshot.data!) {
                    ModelDaerah wilayah = ModelDaerah.fromJson(data);
                    dataWilayah.add(wilayah);
                  }
                  return ListView.builder(
                    itemCount: dataWilayah.length,
                    itemBuilder: (context, index) {
                      var item = dataWilayah[index];
                      Widget tile;
                      if (isFirstTile) {
                        // Menambahkan SizedBox hanya untuk ListTile pertama
                        tile = Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.075,
                                  vertical: MediaQuery.of(context).size.width *
                                      0.025),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.5),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: ListTile(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (BuildContext context) =>
                                                    HalamanUtama(
                                                        idWilayah: item.id!,
                                                        longitude: item.lon!,
                                                        latitude: item.lat!,
                                                        kabupaten: item.kota!)));
                                      },
                                      title: Text(
                                        "${item.kota}" ?? '',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        item.propinsi ?? '',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                        isFirstTile =
                            false; // Setelah menambahkan SizedBox pada tile pertama, atur menjadi false
                      } else {
                        tile = Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.075,
                              vertical:
                                  MediaQuery.of(context).size.width * 0.025),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(20)),
                                child: ListTile(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                HalamanUtama(
                                                    idWilayah: item.id!,
                                                    longitude: item.lon!,
                                                    latitude: item.lat!,
                                                    kabupaten: item.kota!)));
                                  },
                                  title: Text(
                                    "${item.kota}" ?? '',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    item.propinsi ?? '',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black54),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                      return tile;
                    },
                  );
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
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
                          "List Daerah",
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
        currentIndex: 0,
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
