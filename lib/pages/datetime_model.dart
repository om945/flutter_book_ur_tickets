import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateTime {
  final String day;
  final String num;

  DateTime({required this.day, required this.num});

  static List<DateTime> listDate = [
    DateTime(day: 'Mon', num: '1'),
    DateTime(day: 'Tue', num: '2'),
    DateTime(day: 'Wed', num: '3'),
    DateTime(day: 'Thu', num: '4'),
    DateTime(day: 'Fri', num: '5'),
    DateTime(day: 'Sat', num: '6'),
  ];

  static List<String> listTime = [
    '11.30 AM',
    '01.30 PM',
    '04.30 PM',
    '07.30 PM',
    '09.30 PM',
    '12.30 PM',
  ];
}

class Fontfamily {
  static TextStyle whiteFont20 = GoogleFonts.poppins(
      color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);

  static TextStyle whiteFont16 =
      GoogleFonts.poppins(color: Colors.white, fontSize: 16);

  static TextStyle subFont12 =
      GoogleFonts.poppins(color: Colors.white, fontSize: 12);
}
