import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/halamanRegister.dart';

class HalamanLogin extends StatefulWidget {
  const HalamanLogin({Key? key}) : super(key: key);

  @override
  State<HalamanLogin> createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
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
      body: Container(
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
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black,
                        // Atas hitam dengan opasitas 100%
                        Colors.black.withOpacity(0),
                        // Bawah hitam dengan opasitas 50%
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Login untuk melanjutkan",
                            style: TextStyle(
                              fontSize: 18,
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
                          SizedBox(height: MediaQuery.of(context).size.width * 0.05,),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10,),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  focusColor: Colors.black,
                                  fillColor: Colors.white.withOpacity(0.2),
                                  hintText: 'Username',
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      const BorderSide(color: Colors.white, width: 3),
                                      borderRadius: BorderRadius.circular(20)),
                                  labelStyle: TextStyle(
                                    color: Colors.black12,
                                    fontSize: 18
                                  ),
                                  border: OutlineInputBorder( // Menambah// kan border
                                    borderRadius: BorderRadius.circular(20.0), // Mengatur sudut border
                                    borderSide: BorderSide( // Mengatur sifat border
                                      color: Colors.blue, // Warna border
                                      width: 2.0, // Ketebalan border
                                    ),
                                  ),
                                  // Jika ingin menambahkan ikon pada input field, bisa gunakan prefixIcon
                                  // prefixIcon: Icon(Icons.email), // Ganti dengan ikon yang diinginkan
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10,),
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  filled: true,
                                  focusColor: Colors.black,
                                  fillColor: Colors.white.withOpacity(0.2),
                                  hintText: 'Password',
                                  focusedBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(color: Colors.white, width: 3),
                                  borderRadius: BorderRadius.circular(20)),
                                  labelStyle: TextStyle(
                                      color: Colors.black12,
                                      fontSize: 18
                                  ),
                                  border: OutlineInputBorder( // Menambah// kan border
                                    borderRadius: BorderRadius.circular(20.0), // Mengatur sudut border
                                    borderSide: BorderSide( // Mengatur sifat border
                                      color: Colors.blue, // Warna border
                                      width: 2.0, // Ketebalan border
                                    ),
                                  ),
                                  // Jika ingin menambahkan ikon pada input field, bisa gunakan prefixIcon
                                  // prefixIcon: Icon(Icons.email), // Ganti dengan ikon yang diinginkan
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.teal
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.login_rounded,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "LOGIN",
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 11.5),
                                    child: Text(
                                      "Belum punya akun?",
                                      style: TextStyle(
                                        fontSize: 18,
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
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(context, MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              HalamanRegister()));
                                    },
                                    child: Text(
                                      'Register',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.teal,
                                        fontWeight: FontWeight.bold,
                                        // shadows: [
                                        //   Shadow(
                                        //     blurRadius: 10,
                                        //     color: Colors.black,
                                        //     offset: Offset(2, 2),
                                        //   ),
                                        // ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //SizedBox(height: MediaQuery.of(context).size.width * 0.1),
                        ],
                      ),
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
