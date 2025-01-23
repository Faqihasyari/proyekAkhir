import 'package:flutter/material.dart';

class Category {
  String name;
  String description;
  IconData icon;
  String imageAsset;

  Category({
    required this.name,
    required this.description,
    required this.icon,
    required this.imageAsset,
  });
}

var kategori = [
  Category(
      name: 'Olahraga Bola Besar',
      description:
          'Olahraga bola besar adalah cabang olahraga yang menggunakan bola berukuran besar ',
      imageAsset: 'assets/images/bolaBesar.png',
      icon: Icons.sports_basketball),
  Category(
      name: 'Olahraga Bola Kecil',
      description:
          'Olahraga bola kecil adalah permainan yang menggunakan bola kecil sebagai alat utama',
      imageAsset: 'assets/images/Tenis.png',
      icon: Icons.sports_tennis),
  Category(
      name: 'Olahraga Boxing',
      description:
          'Olahraga kontak penuh yang menggunakan tinju untuk menyerang lawan. Petinju menggunakan sarung tinju untuk melindungi tangan dan wajah.',
      imageAsset: 'assets/images/boxing.png',
      icon: Icons.sports_mma),
  Category(
      name: 'Olahraga Muay Thai',
      description:
          'Muay Thai melibatkan penggunaan siku, lutut, kaki, dan serangan clinch (pelukan).',
      imageAsset: 'assets/images/muayThai.png',
      icon: Icons.sports_martial_arts_rounded),
  Category(
      name: 'Olahraga Karate',
      description:
          'Seni bela diri asal Jepang yang menekankan pada teknik pukulan, tendangan, dan blok.',
      imageAsset: 'assets/images/karate.png',
      icon: Icons.sports_gymnastics),
  Category(
      name: 'Olahraga Lari',
      description:
          'Olahraga kardio yang melibatkan gerakan kaki secara berulang untuk berpindah tempat.',
      imageAsset: 'assets/images/lari.png',
      icon: Icons.directions_run_sharp),
  Category(
      name: 'Olahraga Memanah',
      description:
          'Olahraga yang menggunakan busur dan anak panah untuk mencapai target.',
      imageAsset: 'assets/images/memanah.png',
      icon: Icons.brightness_high_outlined),
  Category(
      name: 'Olahraga Menembak',
      description:
          'Olahraga yang melibatkan penggunaan senjata api untuk mengenai target.',
      imageAsset: 'assets/images/menembak.png',
      icon: Icons.groups_rounded),
  Category(
      name: 'Olahraga Berenang',
      description:
          'Olahraga air yang melibatkan gerakan seluruh tubuh untuk bergerak di dalam air',
      imageAsset: 'assets/images/berenang.png',
      icon: Icons.water),
  Category(
      name: 'Olahraga Bersepeda',
      description: ': Olahraga yang menggunakan sepeda untuk berpindah tempat.',
      imageAsset: 'assets/images/bersepeda.png',
      icon: Icons.bike_scooter),
];
