import 'dart:convert';
import 'dart:ui';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/authService.dart';
import 'package:weather_app/halamanRegister.dart';
import 'halamanUtama.dart';
import 'package:crypt/crypt.dart';

class HalamanLogin extends StatefulWidget {
  //const HalamanLogin({Key? key}) : super(key: key);

  const HalamanLogin({super.key});

  @override
  State<HalamanLogin> createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  List _listData = [];
  bool siangHari = false;

  Future _getuser() async {
    try {
      final response = await http.get(Uri.parse(
          "http://192.168.2.234:8080/flutterApi/crudFlutterWeatherApp/read.php"));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          _listData = data;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    _getuser();
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
            image: siangHari
                ? AssetImage("assets/afternoonSky.jpg")
                : AssetImage("assets/nightSky.jpg"),
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
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
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
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.05,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaY: 10,
                            sigmaX: 10,
                          ),
                          child: TextFormField(
                            controller: _usernameController,
                            decoration: InputDecoration(
                              filled: true,
                              focusColor: Colors.black,
                              fillColor: Colors.white.withOpacity(0.5),
                              hintText: 'Username',
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 3),
                                  borderRadius: BorderRadius.circular(20)),
                              labelStyle: TextStyle(
                                  color: Colors.black12, fontSize: 18),
                              border: OutlineInputBorder(
                                // Menambah// kan border
                                borderRadius: BorderRadius.circular(20.0),
                                // Mengatur sudut border
                                borderSide: BorderSide(
                                  // Mengatur sifat border
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
                      SizedBox(
                          height: MediaQuery.of(context).size.width * 0.05),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaY: 10,
                            sigmaX: 10,
                          ),
                          child: TextFormField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              focusColor: Colors.black,
                              fillColor: Colors.white.withOpacity(0.5),
                              hintText: 'Password',
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 3),
                                  borderRadius: BorderRadius.circular(20)),
                              labelStyle: TextStyle(
                                  color: Colors.black12, fontSize: 18),
                              border: OutlineInputBorder(
                                // Menambah// kan border
                                borderRadius: BorderRadius.circular(20.0),
                                // Mengatur sudut border
                                borderSide: BorderSide(
                                  // Mengatur sifat border
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
                      SizedBox(
                          height: MediaQuery.of(context).size.width * 0.05),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              login();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.teal),
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
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
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
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              HalamanRegister()));
                                },
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold,
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

  void login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    int panjangData = _listData.length;
    bool isValid(String cryptFormatHash, String enteredPassword) =>
        Crypt(cryptFormatHash).match(enteredPassword);

    for (int x = 0; x < panjangData; x++) {
      if (_listData[x]["username"] == username) {
        bool cekPassword = isValid(_listData[x]["password"], password);
        if (cekPassword) {
          // String id = _listData[x]["id"];
          // String nama = _listData[x]["nama"];
          // String namauser = _listData[x]["username"];
          // String nim = _listData[x]["nim"];
          // String kelas = _listData[x]["kelas"];
          // String sandi = _listData[x]["password"];
          // String tempat = _listData[x]["tempatDefault"];
          // String idTempat = _listData[x]["idTempat"];
          // String longitude = _listData[x]["longitude"];
          // String latitude = _listData[x]["latitute"];
          // String kesanPesan = _listData[x]["kesanPesan"];
          // print(kesanPesan);
          // authService.login(id, nama, namauser, nim, kelas, sandi, tempat, idTempat, longitude, latitude, kesanPesan);
          // print(authService.nama);
          //     .then((_) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => HalamanUtama(
                        idWilayah: _listData[x]["idTempat"],
                        longitude: _listData[x]["longitude"],
                        latitude: _listData[x]["latitute"],
                        kabupaten: _listData[x]["tempatDefault"],
                        id: _listData[x]["id"],
                      )));
          // });
        }
      }
    }
  }
}
