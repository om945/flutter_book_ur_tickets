import 'package:flutter/material.dart';
import 'package:flutter_book_ur_tickets/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

class Movie extends StatelessWidget {
  const Movie({super.key});

  final int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/movie/home.png',
              height: 20,
              width: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/movie/movie.png',
              height: 20,
              width: 20,
            ),
            label: 'Movies',
          ),
        ],
        unselectedFontSize: 10,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: (int index) {
          Navigator.of(context).pop(MaterialPageRoute(builder: (context) {
            if (index == 1) {
              return Movie();
            } else {
              return Homepage();
            }
          }));
        },
      ),
      appBar: AppBar(
        excludeHeaderSemantics: false,
        scrolledUnderElevation: 120,
        forceMaterialTransparency: true,
        shadowColor: Colors.black,
        title: Text("Movies"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: GridView(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 8,
                mainAxisExtent: 300),
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(37, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(0),
                    height: 250.0,
                    width: 175,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/movie/6.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 170,
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(148, 0, 0, 0),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.red,
                            size: 15,
                          ),
                          Text(' 7.4', style: TextStyle(fontSize: 15)),
                          SizedBox(width: 20),
                          Text('71.9k', style: TextStyle(fontSize: 15)),
                          SizedBox(width: 5),
                          Text(
                            'votes',
                            style:
                                TextStyle(fontSize: 13, color: Colors.white70),
                          )
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Game Changer',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(37, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(0),
                    height: 250.0,
                    width: 175,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/movie/fateh.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 170,
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(148, 0, 0, 0),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.red,
                            size: 15,
                          ),
                          Text(
                            ' 8.4',
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(width: 30),
                          Text('6.4k', style: TextStyle(fontSize: 15)),
                          SizedBox(width: 5),
                          Text(
                            'votes',
                            style:
                                TextStyle(fontSize: 13, color: Colors.white70),
                          )
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Fateh',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(37, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(0),
                    height: 250.0,
                    width: 175,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/movie/pushpa2.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 170,
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(148, 0, 0, 0),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.red,
                            size: 15,
                          ),
                          Text(' 8.3', style: TextStyle(fontSize: 15)),
                          SizedBox(width: 20),
                          Text('445.4k', style: TextStyle(fontSize: 15)),
                          SizedBox(width: 5),
                          Text(
                            'votes',
                            style:
                                TextStyle(fontSize: 13, color: Colors.white70),
                          )
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pushpa 2: The Rule',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(37, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(0),
                    height: 250.0,
                    width: 175,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/movie/7.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 170,
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(148, 0, 0, 0),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.red,
                            size: 15,
                          ),
                          Text(' 8.5', style: TextStyle(fontSize: 15)),
                          SizedBox(width: 20),
                          Text('100k', style: TextStyle(fontSize: 15)),
                          SizedBox(width: 5),
                          Text(
                            'votes',
                            style:
                                TextStyle(fontSize: 13, color: Colors.white70),
                          )
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'MARCO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(37, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(0),
                    height: 250.0,
                    width: 175,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/movie/mufasa-lion-king-mobile.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 170,
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(148, 0, 0, 0),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.red,
                            size: 15,
                          ),
                          Text(' 8.4', style: TextStyle(fontSize: 15)),
                          SizedBox(width: 20),
                          Text('68.1k', style: TextStyle(fontSize: 15)),
                          SizedBox(width: 5),
                          Text(
                            'votes',
                            style:
                                TextStyle(fontSize: 13, color: Colors.white70),
                          )
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mufasa: The Lion King',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(37, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(0),
                    height: 250.0,
                    width: 175,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/movie/sambhaji.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 170,
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(148, 0, 0, 0),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.red,
                            size: 15,
                          ),
                          Text(' 9.2', style: TextStyle(fontSize: 15)),
                          SizedBox(width: 20),
                          Text('10k', style: TextStyle(fontSize: 15)),
                          SizedBox(width: 5),
                          Text(
                            'votes',
                            style:
                                TextStyle(fontSize: 13, color: Colors.white70),
                          )
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dharmarakshak Maha...',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(37, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(0),
                    height: 250.0,
                    width: 175,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/movie/Emergency.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 170,
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(148, 0, 0, 0),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.red,
                            size: 15,
                          ),
                          Text(' 8.2', style: TextStyle(fontSize: 15)),
                          SizedBox(width: 20),
                          Text('77.5k', style: TextStyle(fontSize: 15)),
                          SizedBox(width: 5),
                          Text(
                            'votes',
                            style:
                                TextStyle(fontSize: 13, color: Colors.white70),
                          )
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Emergency',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ]),
      ),
    );
  }
}
