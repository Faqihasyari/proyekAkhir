import 'package:flutter/material.dart';
import 'package:proyek_akhir/color.dart';
import 'package:proyek_akhir/model/category.dart';
import 'package:proyek_akhir/third_screen.dart';

class SecondScreen extends StatelessWidget {
  final Category category;
  const SecondScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Column(
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
            Padding(
              padding: const EdgeInsets.all(28),
              child: Text(
                'AYO KITA LIHAT ADA APA SAJA \n JENIS-JENIS OLAHRAGA',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'FunnelDisplay',
                    fontWeight: FontWeight.bold,
                    color: fontColor),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Flexible(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                ),
                itemBuilder: (context, index) {
                  final category = kategori[index];
                  return Column(
                    children: [
                      Image.asset(
                        category.imageAsset,
                        width: screenWidth * 0.1,
                        height: screenHeight * 0.1,
                      ),
                    ],
                  );
                },
                itemCount: 8,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.1),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ThirdScreen();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                    backgroundColor: buttonColor),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Let's Go Lihat",
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'FunnelDisplay'),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.arrow_right_alt_sharp,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
