import 'dart:html';
import 'package:flutter/foundation.dart';

class AuthService extends ChangeNotifier {
  bool isLoggedIn = false;
  String id = "";
  String nama = '';
  String username = '';
  String nim = "";
  String kelas = "";
  String password = "";
  String tempatDefault = "";
  String idTempat = "";
  String longitude = "";
  String latitute = "";
  String kesanPesan = "";
  String foto = "";



  Future<void> login(String id, String nama, String username, String nim, String kelas, String password, String tempatDefault, String idTempat, String longitude, String latitute, String kesanPesan) async {
    isLoggedIn = true;
    this.id = id;
    this.username = username;
    this.nama = nama;
    this.nim = nim;
    this.kelas = kelas;
    this.password = password;
    this.tempatDefault = tempatDefault;
    this.idTempat = idTempat;
    this.longitude = longitude;
    this.latitute = latitute;
    this.kesanPesan = kesanPesan;

    notifyListeners();
  }

  void logout() {
    isLoggedIn = false;
    this.id = "";
    this.username = "";
    this.nama = "";
    this.nim = "";
    this.kelas = "";
    this.password = "";
    this.tempatDefault = "";
    this.idTempat = "";
    this.longitude = "";
    this.latitute = "";
    this.kesanPesan = "";

    notifyListeners();
  }
}
