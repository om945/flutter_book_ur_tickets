import 'package:flutter/material.dart';
import 'package:flutter_book_ur_tickets/pages/selecttheator.dart';
import 'package:google_fonts/google_fonts.dart';

class Mufasa extends StatelessWidget {
  const Mufasa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Colors.black,
        body: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              child: Hero(
                  tag: 'Mufasa: The LionMufasa',
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage(
                          "assets/movie/mufasa-lion-king-mobile.png"),
                      fit: BoxFit.fitWidth,
                    )),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                            Color.fromARGB(255, 0, 0, 0),
                            Color.fromARGB(141, 33, 36, 44).withOpacity(.8),
                            Color.fromARGB(255, 33, 36, 44).withOpacity(.1)
                          ])),
                    ),
                  )),
            ),
            Positioned(
              top: 400,
              child: Column(children: [
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Mufasa: The Lion King',
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            offset: Offset(0.2, 0.2),
                          ),
                        ],
                        fontSize: 30,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  width: 155,
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
                          style: TextStyle(fontSize: 13, color: Colors.white70),
                        )
                      ]),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 1,
                      child: Text(
                        'Hindi, English || 1h 58m || Adventure, Animation, Drama  || 20 Dec, 2024',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13.5,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 1,
                      child: Text(
                        "Adattu is one of the most renowned gold-trading families in Kerala. Unexpectedly, a mysterious incident shakes the Adattu family. George, the head of the family, sets out to uncover the truth and find those responsible. At the same time, his younger brother, Marco, embarks on the same quest but through a different path. This forms the core of Marco, an intense, violent, action-packed drama.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13.5,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BuyTicket(
                                title: 'Mufasa: The Lion King',
                                image: Image.asset(
                                    'assets/movie/mufasa-lion-king-mobile.png'),
                              )));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: Text(
                      'book Ticket',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ))
              ]),
            ),
          ],
        ));
  }
}
