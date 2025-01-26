import 'package:flutter/material.dart';
import 'package:proyek_akhir/color.dart';
import 'package:proyek_akhir/model/category.dart';
import 'package:proyek_akhir/second_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
                  Image.asset(
                    'assets/images/bebo.png',
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(width: 16),
                  // Teks/menu
                ],
              ),
            ),
            Expanded(
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Home.png',
                    width: screenWidth * 0.5,
                    height: screenHeight * 0.4,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Ayo Menjadi Sehat \n Dengan Berolahraga Setiap Hari',
                    style: TextStyle(
                      fontFamily: 'FunnelDisplay',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SecondScreen(
                          category: kategori[0],
                        );
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                        backgroundColor: buttonColor),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Go To Dashboard",
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
                  )
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
