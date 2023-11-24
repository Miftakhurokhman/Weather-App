import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'halamanUtama.dart';

class HalamanRegister extends StatefulWidget {
  const HalamanRegister({super.key});

  @override
  State<HalamanRegister> createState() => _HalamanRegisterState();
}

class _HalamanRegisterState extends State<HalamanRegister> {
  bool siangHari = false;
  String _selectedItem = 'ayah';

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
                    image:
                        siangHari
                            ?
                        AssetImage("assets/afternoonSky.jpg")
                        :
                    AssetImage("assets/nightSky.jpg")
                    ,
                    fit: BoxFit.cover)),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.075),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 120,
                      ),
                      TextFormField(
                            decoration: InputDecoration(
                              icon: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.black54),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Icon(Icons
                                        .drive_file_rename_outline_rounded,
                                    color: Colors.black54),
                                  )),
                              filled: true,
                              focusColor: Colors.black,
                              fillColor: Colors.white.withOpacity(0.5),
                              hintText: 'Masukan nama anda',
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 3),
                                  borderRadius: BorderRadius.circular(20)),
                              labelStyle: TextStyle(
                                  color: Colors.black12, fontSize: 18),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.05,
                      ),
                      TextFormField(
                            decoration: InputDecoration(
                              icon: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.black54),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Icon(Icons.account_circle,
                                        color: Colors.black54),
                                  )),
                              filled: true,
                              focusColor: Colors.black,
                              fillColor: Colors.white.withOpacity(0.5),
                              hintText: 'Masukan username',
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 3),
                                  borderRadius: BorderRadius.circular(20)),
                              labelStyle: TextStyle(
                                  color: Colors.black12, fontSize: 18),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.05,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          icon: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black54),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(Icons.perm_identity_rounded,
                                    color: Colors.black54),
                              )),
                          filled: true,
                          focusColor: Colors.black,
                          fillColor: Colors.white.withOpacity(0.5),
                          hintText: 'Masukan NIM',
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(20)),
                          labelStyle: TextStyle(
                              color: Colors.black12, fontSize: 18),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.05,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          icon: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black54),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(Icons.meeting_room_rounded,
                                    color: Colors.black54),
                              )),
                          filled: true,
                          focusColor: Colors.black,
                          fillColor: Colors.white.withOpacity(0.5),
                          hintText: 'Masukan kelas',
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(20)),
                          labelStyle: TextStyle(
                              color: Colors.black12, fontSize: 18),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.05,
                      ),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          icon: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.black54),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Icon(Icons.place_rounded,
                                        color: Colors.black54),
                                  )
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black54),
                          ),
                            focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 3),
                            borderRadius: BorderRadius.circular(20))
                        ),
                        focusColor: Colors.black,
                        //fillColor: Colors.white.withOpacity(0.2),
                        value: _selectedItem,
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedItem = newValue!;
                          });
                        },
                        items: <String>[
                          'ayah',
                          'ibu',
                          'anak',
                          "asdas",
                          "asdwwfe",
                          "asd",
                          "wedasda",
                          "wdada",
                          "ewfaxaasdwd",
                          "aswd",
                          "wrggsaffad",
                          "hrefsdasdaw",
                          "htrth",
                          "htrgsewd"
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.05,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          icon: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black54),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(Icons.description_rounded,
                                    color: Colors.black54),
                              )),
                          filled: true,
                          focusColor: Colors.black,
                          fillColor: Colors.white.withOpacity(0.5),
                          hintText: 'Masukan kesan & pesan',
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(20)),
                          labelStyle: TextStyle(
                              color: Colors.black12, fontSize: 18),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
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
                          "Register",
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
    );
  }
}
