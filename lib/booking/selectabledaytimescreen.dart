import 'package:flutter/material.dart';
import 'package:flutter_book_ur_tickets/booking/seatbooking.dart';
import 'package:flutter_book_ur_tickets/pages/datetime_model.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectableDayTimeScreen extends StatefulWidget {
  final String title;
  final Image image;

  const SelectableDayTimeScreen(
      {super.key, required this.title, required this.image});

  @override
  // ignore: library_private_types_in_public_api
  _SelectableDayTimeScreenState createState() =>
      _SelectableDayTimeScreenState();
}

class _SelectableDayTimeScreenState extends State<SelectableDayTimeScreen> {
  // Selected day and time
  String? selectedDay;
  String? selectedTime;

  // Days of the week
  final List<String> days = [
    'MON - 27 JAN',
    'TUS - 28 JAN',
    'WED - 29 JAN',
    'THU - 30 JAN',
    'FRI - 31 JAN',
    'SAT - 01 FEB',
    'SUN - 02 FEB',
  ];

  // Time slots
  final List<String> times = [
    '9:00 AM',
    '11:00 AM',
    '1:00 PM',
    '3:00 PM',
    '5:00 PM',
    '7:00 PM',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text(
          'Selectable Day and Time',
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: widget.image.image,
                fit: BoxFit.cover,
                opacity: 0.5,
                colorFilter: ColorFilter.mode(
                    const Color.fromARGB(194, 0, 0, 0), BlendMode.darken)),
          ),
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: Fontfamily.whiteFont20,
                ),
                SizedBox(height: 20),
                Text(
                  'Select a Day:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: days.map((day) {
                    return ChoiceChip(
                      label: Column(
                        children: [
                          Text(
                            day,
                            style: Fontfamily.whiteFont16,
                          ),
                          Text(
                            selectedTime ?? '',
                            style: Fontfamily.subFont12,
                          ),
                        ],
                      ),
                      selected: selectedDay == day,
                      onSelected: (isSelected) {
                        setState(() {
                          selectedDay = isSelected ? day : null;
                        });
                      },
                      selectedColor: Colors.redAccent,
                      labelStyle: TextStyle(
                        color: selectedDay == day ? Colors.white : Colors.black,
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
                Text(
                  'Select a Time:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: times.map((time) {
                    return ChoiceChip(
                      label: Column(
                        children: [
                          Text(time, style: Fontfamily.whiteFont16),
                          Text(selectedDay ?? '', style: Fontfamily.subFont12)
                        ],
                      ),
                      selected: selectedTime == time,
                      onSelected: (isSelected) {
                        setState(() {
                          selectedTime = isSelected ? time : null;
                        });
                      },
                      selectedColor: Colors.redAccent,
                      labelStyle: TextStyle(
                        color:
                            selectedTime == time ? Colors.white : Colors.black,
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: 40),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(208, 255, 82, 82),
                    ),
                    onPressed: () {
                      if (selectedDay != null && selectedTime != null) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            'Selected: $selectedDay at $selectedTime',
                            style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily),
                          ),
                        ));
                        Future.delayed(Duration(seconds: 1), () {
                          // ignore: use_build_context_synchronously
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Seatbook(movieHouse: widget.title)));
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            'Please select both a day and time.',
                            style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily),
                          ),
                        ));
                      }
                    },
                    child: Text('Confirm Selection',
                        style: Fontfamily.whiteFont16),
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
