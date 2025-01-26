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
      if (constraints.maxWidth <= 800) {
        return DetaiMobilePage();
      } else if (constraints.maxWidth <= 1100) {
        return DetailWebPage(
          gridCount: 2,
        );
      } else if (constraints.maxWidth <= 1500) {
        return BigScreen(
          gridCount: 3,
        );
      } else {
        return BigScreenAgain(
          gridCount: 4,
        );
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
  Map<int, String> currentImages = {};

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < kategori.length; i++) {
      currentImages[i] = kategori[i].image1;
    }
  }

  void switchImage(int index, String newImage) {
    setState(() {
      currentImages[index] = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'INILAH BEBERAPA JENIS \n CONTOH OLAHRAGA DALAM DUNIA OLAHRAGA',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'FunnelDisplay',
                    color: fontColor),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: kategori.length,
                itemBuilder: (context, index) {
                  final category = kategori[index];
                  return Padding(
                    padding: const EdgeInsets.all(18),
                    child: Card(
                      color: cardColor,
                      margin: const EdgeInsets.symmetric(horizontal: 28),
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              category.name,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(category.description),
                            SizedBox(height: 16),
                            Center(
                              child: Image.asset(
                                currentImages[index]!,
                                width: 250,
                                height: 250,
                              ),
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    switchImage(index, category.image1);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: buttonColor),
                                  child: Text(
                                    "Gambar 1",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    switchImage(index, category.image2);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: buttonColor),
                                  child: Text(
                                    "Gambar 2",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  switchImage(index, category.image3);
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: buttonColor),
                                child: Text(
                                  "Gambar 3",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final int gridCount;
  const DetailWebPage({super.key, required this.gridCount});

  @override
  State<DetailWebPage> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  Map<int, String> currentImages = {};

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < kategori.length; i++) {
      currentImages[i] = kategori[i].image1;
    }
  }

  void switchImage(int index, String newImage) {
    setState(() {
      currentImages[index] = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'INILAH BEBERAPA JENIS \n CONTOH OLAHRAGA DALAM DUNIA OLAHRAGA',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'FunnelDisplay',
                  color: fontColor),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              padding: EdgeInsets.all(16),
              children: List.generate(kategori.length, (index) {
                final category = kategori[index];
                return Card(
                  color: cardColor,
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          category.name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(category.description),
                        SizedBox(height: 16),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Image.asset(
                                currentImages[index]!,
                                width: screenHeight * 1 / 3.9,
                                height: screenWidth * 1 / 3.9,
                              ),
                            ),
                            SizedBox(height: 16),
                            // Tombol untuk mengganti gambar
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    switchImage(index, category.image1);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: buttonColor),
                                  child: Text(
                                    "Gambar 1",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    switchImage(index, category.image2);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: buttonColor),
                                  child: Text(
                                    "Gambar 2",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  switchImage(index, category.image3);
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: buttonColor),
                                child: Text(
                                  "Gambar 3",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class BigScreen extends StatefulWidget {
  final int gridCount;
  const BigScreen({super.key, required this.gridCount});

  @override
  State<BigScreen> createState() => _BigScreenState();
}

class _BigScreenState extends State<BigScreen> {
  Map<int, String> currentImages = {};

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < kategori.length; i++) {
      currentImages[i] = kategori[i].image1;
    }
  }

  void switchImage(int index, String newImage) {
    setState(() {
      currentImages[index] = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'INILAH BEBERAPA JENIS \n CONTOH OLAHRAGA DALAM DUNIA OLAHRAGA',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'FunnelDisplay',
                  color: fontColor),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              padding: EdgeInsets.all(16),
              children: List.generate(kategori.length, (index) {
                final category = kategori[index];
                return Card(
                  color: cardColor,
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          category.name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(category.description),
                        SizedBox(height: 0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Image.asset(
                                currentImages[index]!,
                                width: screenHeight * 0.1,
                                height: screenWidth * 0.1,
                              ),
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    switchImage(index, category.image1);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: buttonColor),
                                  child: Text(
                                    "Gambar 1",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    switchImage(index, category.image2);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: buttonColor),
                                  child: Text(
                                    "Gambar 2",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                switchImage(index, category.image3);
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: buttonColor),
                              child: Text(
                                "Gambar 3",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class BigScreenAgain extends StatefulWidget {
  final int gridCount;
  const BigScreenAgain({super.key, required this.gridCount});

  @override
  State<BigScreenAgain> createState() => _BigScreenAgainState();
}

class _BigScreenAgainState extends State<BigScreenAgain> {
  Map<int, String> currentImages = {};

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < kategori.length; i++) {
      currentImages[i] = kategori[i].image1;
    }
  }

  void switchImage(int index, String newImage) {
    setState(() {
      currentImages[index] = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'INILAH BEBERAPA JENIS \n CONTOH OLAHRAGA DALAM DUNIA OLAHRAGA',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'FunnelDisplay',
                  color: fontColor),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 2,
              mainAxisSpacing: 8,
              padding: EdgeInsets.all(16),
              children: List.generate(kategori.length, (index) {
                final category = kategori[index];
                return Card(
                  color: cardColor,
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          category.name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(category.description),
                        SizedBox(height: 0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Image.asset(
                                currentImages[index]!,
                                width: screenHeight * 0.1,
                                height: screenWidth * 0.1,
                              ),
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    switchImage(index, category.image1);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: buttonColor),
                                  child: Text("Gambar 1",
                                      style: TextStyle(color: Colors.white)),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    switchImage(index, category.image2);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: buttonColor),
                                  child: Text(
                                    "Gambar 2",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                switchImage(index, category.image3);
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: buttonColor),
                              child: Text(
                                "Gambar 3",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
