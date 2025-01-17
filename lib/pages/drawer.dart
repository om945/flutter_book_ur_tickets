import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
        children: [
          ListTile(
            leading: const Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: GoogleFonts.poppins().fontFamily),
            ),
          ),
        ],
      ),
    );
  }
}
