import 'package:flutter/material.dart';
import 'package:flutter_book_ur_tickets/pages/login.dart';
import 'package:flutter_book_ur_tickets/pages/movie.dart';
import 'package:google_fonts/google_fonts.dart';

class Gredient {
  static Gradient gradient1 = LinearGradient(colors: [
    const Color.fromARGB(255, 70, 70, 70),
    const Color.fromARGB(221, 0, 0, 0),
  ], begin: Alignment.topLeft, end: Alignment.bottomRight);
}

final ScrollController _scrollController = ScrollController();
final ScrollController _scrollController1 = ScrollController();
final ScrollController _scrollController2 = ScrollController();
final int _selectedIndex = 0;

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                if (index == 1) {
                  return Movie();
                } else {
                  return Movie();
                }
              }));
            }),
        appBar: AppBar(
          excludeHeaderSemantics: false,
          scrolledUnderElevation: 120,
          forceMaterialTransparency: true,
          shadowColor: Colors.black,
          title: Text("Book ur tickets"),
          centerTitle: true,
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                child: Text(
                  'Kolhapur',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                  strutStyle: StrutStyle(),
                ),
              )),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          'Recommended',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                    child: RawScrollbar(
                      minThumbLength: 1,
                      thickness: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      thumbVisibility: true,
                      controller: _scrollController,
                      thumbColor: Colors.white,
                      child: SingleChildScrollView(
                        controller: _scrollController,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                          // decoration: BoxDecoration(color: Colors.black),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  37, 255, 255, 255)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
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
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              148, 0, 0, 0),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.red,
                                          size: 15,
                                        ),
                                        Text(' 8.4',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 20),
                                        Text('6.4k',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 5),
                                        Text(
                                          'votes',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white70),
                                        )
                                      ]),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Fateh',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: GoogleFonts.poppins()
                                                .fontFamily,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  37, 255, 255, 255)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
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
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              148, 0, 0, 0),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.red,
                                          size: 15,
                                        ),
                                        Text(' 7.4',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 20),
                                        Text('71.9k',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 5),
                                        Text(
                                          'votes',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white70),
                                        )
                                      ]),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Game Changer',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: GoogleFonts.poppins()
                                                .fontFamily,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  37, 255, 255, 255)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
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
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              148, 0, 0, 0),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.red,
                                          size: 15,
                                        ),
                                        Text(' 8.3',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 20),
                                        Text('445.4k',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 5),
                                        Text(
                                          'votes',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white70),
                                        )
                                      ]),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Pushpa 2: The Rule',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: GoogleFonts.poppins()
                                                .fontFamily,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  37, 255, 255, 255)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
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
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              148, 0, 0, 0),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.red,
                                          size: 15,
                                        ),
                                        Text(' 8.5',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 20),
                                        Text('100k',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 5),
                                        Text(
                                          'votes',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white70),
                                        )
                                      ]),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'MARCO',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: GoogleFonts.poppins()
                                                .fontFamily,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  37, 255, 255, 255)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
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
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              148, 0, 0, 0),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.red,
                                          size: 15,
                                        ),
                                        Text(' 8.4',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 20),
                                        Text('68.1k',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 5),
                                        Text(
                                          'votes',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white70),
                                        )
                                      ]),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Mufasa: The Lion King',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: GoogleFonts.poppins()
                                                .fontFamily,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  37, 255, 255, 255)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
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
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              148, 0, 0, 0),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.red,
                                          size: 15,
                                        ),
                                        Text(' 9.2',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 20),
                                        Text('10k',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 5),
                                        Text(
                                          'votes',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white70),
                                        )
                                      ]),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Dharmarakshak Maha...',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: GoogleFonts.poppins()
                                                .fontFamily,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          'Hindi',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                    child: RawScrollbar(
                      minThumbLength: 1,
                      thickness: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      thumbVisibility: true,
                      controller: _scrollController1,
                      thumbColor: Colors.white,
                      child: SingleChildScrollView(
                        controller: _scrollController1,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                          // decoration: BoxDecoration(color: Colors.black),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  37, 255, 255, 255)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
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
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              148, 0, 0, 0),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.red,
                                          size: 15,
                                        ),
                                        Text(' 8.4',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 20),
                                        Text('6.4k',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 5),
                                        Text(
                                          'votes',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white70),
                                        )
                                      ]),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Fateh',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: GoogleFonts.poppins()
                                                .fontFamily,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  37, 255, 255, 255)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
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
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              148, 0, 0, 0),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.red,
                                          size: 15,
                                        ),
                                        Text(' 7.4',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 20),
                                        Text('71.9k',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 5),
                                        Text(
                                          'votes',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white70),
                                        )
                                      ]),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Game Changer',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: GoogleFonts.poppins()
                                                .fontFamily,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  37, 255, 255, 255)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
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
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              148, 0, 0, 0),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.red,
                                          size: 15,
                                        ),
                                        Text(' 8.3',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 20),
                                        Text('445.4k',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 5),
                                        Text(
                                          'votes',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white70),
                                        )
                                      ]),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Pushpa 2: The Rule',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: GoogleFonts.poppins()
                                                .fontFamily,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  37, 255, 255, 255)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
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
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              148, 0, 0, 0),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.red,
                                          size: 15,
                                        ),
                                        Text(' 8.5',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 20),
                                        Text('100k',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 5),
                                        Text(
                                          'votes',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white70),
                                        )
                                      ]),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'MARCO',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: GoogleFonts.poppins()
                                                .fontFamily,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  37, 255, 255, 255)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
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
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              148, 0, 0, 0),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.red,
                                          size: 15,
                                        ),
                                        Text(' 9.2',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 20),
                                        Text('10k',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 5),
                                        Text(
                                          'votes',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white70),
                                        )
                                      ]),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Dharmarakshak Maha...',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: GoogleFonts.poppins()
                                                .fontFamily,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          'English',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                    child: RawScrollbar(
                      minThumbLength: 1,
                      thickness: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      thumbVisibility: true,
                      controller: _scrollController2,
                      thumbColor: Colors.white,
                      child: SingleChildScrollView(
                        controller: _scrollController2,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          alignment: Alignment(0, 0),
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                          // decoration: BoxDecoration(color: Colors.black),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  37, 255, 255, 255)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
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
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              148, 0, 0, 0),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.red,
                                          size: 15,
                                        ),
                                        Text(' 8.4',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 20),
                                        Text('6.4k',
                                            style: TextStyle(fontSize: 15)),
                                        SizedBox(width: 5),
                                        Text(
                                          'votes',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white70),
                                        )
                                      ]),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Mufasa: The Lion King',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: GoogleFonts.poppins()
                                                .fontFamily,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
