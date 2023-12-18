# Weather App

Weather App merupakan aplikasi untuk perkiraan cuaca. Pada aplikasi ini, user dapat menentukan kota default yang ingin ditampilkan dan mencari informasi cuaca kota lainnya. Dalam aplikasi ini terdapat juga fitur untuk konversi waktu dan juga konversi mata uang.

## Demo

Berikut merupakan link video demo aplikasi : [Demo Weather App](https://drive.google.com/file/d/1ByNnEfZR6SkoqJUTiYs_T5JDcbmFFP1H/view?usp=drive_link)

## Feature

- Perkiraan cuaca tiap kota di Indonesia
- Pencarian kota
- Konversi uang (USD, MYR, IDR)
- Konversi waktu (WITA, WIT, WIB, GMT)
- Light mode dan night mode (otomatis)
- Auto login (Ketika user keluar aplikasi saat posisi sudah login, user tidak perlu melakukan login ulang ketika membuka aplikasi kembali)

## Tech

Aplikasi ini dibangun menggunakan:
- [XAMPP](https://www.apachefriends.org/download.html)
- [Android Studio](https://developer.android.com/studio)
- [phpMyAdmin](https://locallhost.me/phpmyadmin)
- [PHP](https://www.php.net/)
- [DART](https://dart.dev/)
- Command Prompt
- [Ms. Edge](https://www.microsoft.com/id-id/edge?form=MA13FJ)
- [VS Code](https://code.visualstudio.com/)

## Instalation

#### Clone Code
1. Buat folder atau pilih folder yang sudah ada untuk menyimpan file source code.
3. Buka command prompt pada folder tersebut.
4. Lakukan clonning dengan cara run syntax berikut "git clone https://github.com/Miftakhurokhman/Weather-App"

#### Memindah file ke dalam htdocs
1. Apabila anda belum menginstall XAMPP, silahkan install terlebih dahulu.
2. Setelah XAMPP terinstall, buka library, masuk ke folder file yang sudah di clone.
3. Copy folder "flutterApi".
4. Masuk ke dalam folder xampp, masuk ke dalam folder htdocs.
5. Paste folder "flutterApi" pada folder htdocs.

#### Mengimport database
1. Jalankan aplikasi XAMPP.
2. Start Apache dan MySql.
3. Jalankan URL berikut pada browser [http://localhost/phpmyadmin](http://localhost/phpmyadmin).
4. Buat database dengan nama "weather_app".
5. Setelah database terbuat, masuk ke dalam database kemudian pilih menu import.
6. Tekan "Choose File".
7. Pilih file "weather_app.sql" yang berada di forder source code yang telah anda clone.
8. Tekan tombol import.

#### Mengganti IP yang sesuai.
1. Buka command prompt.
2. Jalankan syntax "ipconfig".
3. Copy IP Address anda (contoh :  192.168.100.39).
4. Ganti semua IP "192.168.100.39:8080" yang berada pada source code di file halamanKonversiMataUang.dart, halamanKonversiWaktu.dart, halamanListDaerah.dart, halamanLogin.dart, halamanProfile.dart, halamanRegister.dart, halamanUtama.dart dengan IP yang telah anda copy.

#### Cara run aplikasi
1. Pastikan Apache dan MySql pada XAMPP sudah di start.
2. Run aplikasi.

