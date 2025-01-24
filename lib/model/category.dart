import 'package:flutter/material.dart';

class Category {
  String name;
  String description;
  IconData icon;
  String imageAsset;
  String image1;
  String image2;
  String image3;

  Category({
    required this.name,
    required this.description,
    required this.icon,
    required this.imageAsset,
    required this.image1,
    required this.image2,
    required this.image3,
  });
}

var kategori = [
  Category(
      name: 'Olahraga Bola Besar',
      description:
          'Olahraga bola besar adalah cabang olahraga yang menggunakan bola berukuran besar ',
      imageAsset: 'assets/images/bolaBesar.png',
      icon: Icons.sports_basketball,
      image1: 'assets/images/bolaSepakThird.png',
      image2: 'assets/images/basket.png',
      image3: 'assets/images/volleyballThird.png'),
  Category(
      name: 'Olahraga Bola Kecil',
      description:
          'Olahraga bola kecil adalah permainan yang menggunakan bola kecil sebagai alat utama',
      imageAsset: 'assets/images/Tenis.png',
      icon: Icons.sports_tennis,
      image1: 'assets/images/tenisball.png',
      image2: 'assets/images/kok.png',
      image3: 'assets/images/billiard.png'),
  Category(
      name: 'Olahraga Boxing',
      description:
          'Olahraga kontak penuh yang menggunakan tinju untuk menyerang lawan. Petinju menggunakan sarung tinju untuk melindungi tangan dan wajah.',
      imageAsset: 'assets/images/boxing.png',
      icon: Icons.sports_mma,
      image1: '',
      image2: '',
      image3: ''),
  Category(
      name: 'Olahraga Muay Thai',
      description:
          'Muay Thai melibatkan penggunaan siku, lutut, kaki, dan serangan clinch (pelukan).',
      imageAsset: 'assets/images/muayThai.png',
      icon: Icons.sports_martial_arts_rounded,
      image1: '',
      image2: '',
      image3: ''
      ),
  Category(
      name: 'Olahraga Karate',
      description:
          'Seni bela diri asal Jepang yang menekankan pada teknik pukulan, tendangan, dan blok.',
      imageAsset: 'assets/images/karate.png',
      icon: Icons.sports_gymnastics,
      image1: '',
      image2: '',
      image3: ''),
  Category(
      name: 'Olahraga Lari',
      description:
          'Olahraga kardio yang melibatkan gerakan kaki secara berulang untuk berpindah tempat.',
      imageAsset: 'assets/images/lari.png',
      icon: Icons.directions_run_sharp,
      image1: '',
      image2: '',
      image3: ''),
  Category(
      name: 'Olahraga Memanah',
      description:
          'Olahraga yang menggunakan busur dan anak panah untuk mencapai target.',
      imageAsset: 'assets/images/memanah.png',
      icon: Icons.brightness_high_outlined,
      image1: '',
      image2: '',
      image3: ''),
  Category(
      name: 'Olahraga Menembak',
      description:
          'Olahraga yang melibatkan penggunaan senjata api untuk mengenai target.',
      imageAsset: 'assets/images/menembak.png',
      icon: Icons.groups_rounded,
      image1: '',
      image2: '',
      image3: ''),
  Category(
      name: 'Olahraga Berenang',
      description:
          'Olahraga air yang melibatkan gerakan seluruh tubuh untuk bergerak di dalam air',
      imageAsset: 'assets/images/berenang.png',
      icon: Icons.water,
      image1: '',
      image2: '',
      image3: ''),
  Category(
      name: 'Olahraga Bersepeda',
      description: ': Olahraga yang menggunakan sepeda untuk berpindah tempat.',
      imageAsset: 'assets/images/bersepeda.png',
      icon: Icons.bike_scooter,
      image1: '',
      image2: '',
      image3: ''),
];
