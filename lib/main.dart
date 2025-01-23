import 'package:flutter/material.dart';
import 'package:proyek_akhir/color.dart';
import 'package:proyek_akhir/main_screen.dart';
import 'package:proyek_akhir/second_screen.dart';

void main() {
  runApp(const ProyekAkhir());
}

class ProyekAkhir extends StatelessWidget {
  const ProyekAkhir({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(), debugShowCheckedModeBanner: false, home: Screen());
  }
}
