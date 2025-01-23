import 'package:flutter/material.dart';
import 'package:proyek_akhir/color.dart';
import 'package:proyek_akhir/main_screen.dart';
import 'package:proyek_akhir/model/category.dart';
import 'package:proyek_akhir/third_screen.dart';

class Screen extends StatelessWidget {
  const Screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constrains) {
        if (constrains.maxWidth <= 600) {
          return SecondScreen(
            category: kategori[0],
          );
        } else if (constrains.maxWidth <= 1200) {
          return Text("Belum ADA");
        } else {
          return Text('Sama Belum Ada');
        }
      }),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final Category category;
  const SecondScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
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
                'PILIH OLAHRAGA YANG SESUAI DENGAN HOBI \n YANG ANDA MINATI',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'FunnelDisplay',
                    fontWeight: FontWeight.bold,
                    color: fontColor),
              ),
            ),
            Flexible(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final category = kategori[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ThirdScreen();
                        }));
                      },
                      child: Card(
                        color: cardColor,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(18),
                                  child: Column(
                                    spacing: 10,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: primaryColor,
                                        child: Icon(
                                          category.icon,
                                        ),
                                      ),
                                      Text(
                                        category.name,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      Text(
                                        category.description,
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                            Expanded(
                                child: Image.asset(
                              category.imageAsset,
                              height: 80,
                              width: 80,
                            ))
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: kategori.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
