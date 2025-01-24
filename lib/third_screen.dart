import 'package:flutter/material.dart';
import 'package:proyek_akhir/color.dart';
import 'package:proyek_akhir/model/category.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return DetailWebPage();
      } else {
        return DetaiMobilePage();
      }
    });
  }
}

class DetaiMobilePage extends StatefulWidget {
  const DetaiMobilePage({super.key});

  @override
  State<DetaiMobilePage> createState() => _DetaiMobilePageState();
}

class _DetaiMobilePageState extends State<DetaiMobilePage> {
  int selectedCategoryIndex = 0;

  String currentImage = kategori[0].image1;

  void switchImage(String newImage) {
    setState(() {
      currentImage = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    final selectedCategory = kategori[selectedCategoryIndex];

    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: primaryColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.10),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      icon: Icon(Icons.arrow_back))
                ],
              ),
            ),
            Image.asset(
              currentImage,
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            // Tombol untuk mengganti ke bola sepak
            ElevatedButton(
              onPressed: () {
                switchImage(selectedCategory.image1);
              },
              child: Text("Tampilkan Bola Sepak"),
            ),
            SizedBox(height: 10),
            // Tombol untuk mengganti ke basket
            ElevatedButton(
              onPressed: () {
                switchImage(selectedCategory.image2);
              },
              child: Text("Tampilkan Bola Basket"),
            ),
            SizedBox(height: 10),
            // Tombol untuk mengganti ke bola voli
            ElevatedButton(
              onPressed: () {
                switchImage(selectedCategory.image3);
              },
              child: Text("Tampilkan Bola Voli"),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailWebPage extends StatelessWidget {
  const DetailWebPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
