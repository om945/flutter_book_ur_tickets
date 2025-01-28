import 'package:flutter/material.dart';
import 'package:flutter_book_ur_tickets/pages/selecttheator.dart';
import 'package:google_fonts/google_fonts.dart';

class Pushpa2 extends StatelessWidget {
  const Pushpa2({super.key});

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
                  tag: 'Game Chaner',
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage("assets/movie/pushpa2.png"),
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
                      'Pushpa: The Rise',
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
                        'Hindi || 2h 45m || Action, Drama, Political || 10 Jan, 2025',
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
                        "Pushpa 2: The Rule picks up from the explosive events of the first part, following Pushpa`s meteoric rise as he expands his red sandalwood empire beyond borders. As tensions escalate with rival factions and the authorities, his growing ambitions draw him into intense confrontations and political upheavals.",
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
                                title: 'Pushpa 2: The Rule',
                                image: Image.asset('assets/movie/pushpa2.png'),
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
