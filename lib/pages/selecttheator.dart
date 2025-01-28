import 'package:flutter/material.dart';
import 'package:flutter_book_ur_tickets/booking/selectabledaytimescreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_book_ur_tickets/pages/datetime_model.dart';

class BuyTicket extends StatefulWidget {
  final DateTime? date;
  final String? title;
  final Image? image;
  const BuyTicket({
    super.key,
    this.title,
    this.image,
    this.date,
  });

  @override
  State<BuyTicket> createState() => _BuyTicketState();
}

class Gredient {
  static Gradient gradient = LinearGradient(colors: [
    const Color.fromARGB(221, 112, 112, 112),
    const Color.fromARGB(135, 133, 133, 133)
  ], begin: Alignment.topRight, end: Alignment.bottomLeft);
}

class _BuyTicketState extends State<BuyTicket> {
  Color _color = Colors.white;
  Color _color1 = Colors.white;
  Color _color2 = Colors.white;

  void changecolor() {
    setState(() {
      _color = _color == Colors.white ? Colors.red : Colors.white;
    });
  }

  void changecolor1() {
    setState(() {
      _color1 = _color1 == Colors.white ? Colors.red : Colors.white;
    });
  }

  void changecolor2() {
    setState(() {
      _color2 = _color2 == Colors.white ? Colors.red : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(100, 0, 0, 0),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          widget.title ?? 'Default Title',
          style: TextStyle(
              color: Colors.white,
              fontFamily: GoogleFonts.poppins().fontFamily),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: widget.image?.image ??
                      AssetImage('assets/default_image.png'),
                  fit: BoxFit.cover,
                  opacity: 0.5,
                  colorFilter: ColorFilter.mode(
                      const Color.fromARGB(194, 0, 0, 0), BlendMode.darken))),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.topLeft,
                  height: 150, // Set the height to the screen height
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    gradient: Gredient.gradient,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                changecolor();
                              },
                              icon: Icon(
                                Icons.favorite,
                                color: _color,
                              )),
                          Text(
                            'INOX : ',
                            style: Fontfamily.whiteFont20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 1 / 2,
                            child: Text('Reliance Mega Mall',
                                style: Fontfamily.whiteFont16),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '     Cancellation available',
                            style: Fontfamily.subFont12,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(208, 255, 82, 82),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SelectableDayTimeScreen(
                                      title: 'INOX',
                                      image: widget.image ??
                                          Image.asset(
                                              'assets/default_image.png'),
                                    )));
                          },
                          child: Text(
                            'Confirm Selection',
                            style: Fontfamily.whiteFont16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.topLeft,
                  height: 150, // Set the height to the screen height
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    gradient: Gredient.gradient,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                changecolor1();
                              },
                              icon: Icon(
                                Icons.favorite,
                                color: _color1,
                              )),
                          Text(
                            'PVR : ',
                            style: Fontfamily.whiteFont20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 1 / 2,
                            child: Text('DYP City Mall',
                                style: Fontfamily.whiteFont16),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '     Cancellation available',
                            style: Fontfamily.subFont12,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(208, 255, 82, 82),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SelectableDayTimeScreen(
                                      title: 'PVR',
                                      image: widget.image ??
                                          Image.asset(
                                              'assets/default_image.png'),
                                    )));
                          },
                          child: Text(
                            'Confirm Selection',
                            style: Fontfamily.whiteFont16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.topLeft,
                  height: 150, // Set the height to the screen height
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    gradient: Gredient.gradient,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                changecolor2();
                              },
                              icon: Icon(
                                Icons.favorite,
                                color: _color2,
                              )),
                          Text(
                            'Padma Cinema : ',
                            style: Fontfamily.whiteFont20,
                          ),
                          SizedBox(
                            child:
                                Text('Kolhapur', style: Fontfamily.whiteFont16),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '     Cancellation available',
                            style: Fontfamily.subFont12,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(208, 255, 82, 82),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SelectableDayTimeScreen(
                                      title: 'Padma Cinema',
                                      image: widget.image ??
                                          Image.asset(
                                              'assets/default_image.png'),
                                    )));
                          },
                          child: Text(
                            'Confirm Selection',
                            style: Fontfamily.whiteFont16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
