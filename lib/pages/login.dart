// import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_book_ur_tickets/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

class Gredient {
  static Gradient gradient = LinearGradient(colors: [
    const Color.fromARGB(221, 57, 57, 57),
    const Color.fromARGB(136, 43, 43, 43)
  ], begin: Alignment.topRight, end: Alignment.bottomLeft);
}

TextEditingController email = TextEditingController();
TextEditingController name = TextEditingController();
TextEditingController pass = TextEditingController();

class Login extends StatefulWidget {
  const Login({super.key, required this.Email});

  final String Email;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          body: Container(
              height: MediaQuery.of(context)
                  .size
                  .height, // Set the height to the screen height
              width: MediaQuery.of(context)
                  .size
                  .width, // Set the width to the screen width
              decoration: BoxDecoration(
                image: DecorationImage(
                  opacity: 0.5,
                  alignment: Alignment.bottomCenter,
                  image: AssetImage('assets/files/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 150, 20, 150),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: Gredient.gradient,
                        border: Border.all(
                            color: Colors.white,
                            width: 2,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            strutStyle: StrutStyle(fontWeight: FontWeight.bold),
                            "Sign in",
                            style: GoogleFonts.poppins(fontSize: 30),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                              controller: name,
                              decoration: const InputDecoration(
                                labelText: "Username",
                                labelStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(
                                            125, 222, 222, 222))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(
                                            179, 222, 222, 222))),
                              )),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            controller: email,
                            decoration: const InputDecoration(
                              labelText: "Email",
                              labelStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(125, 222, 222, 222))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(179, 222, 222, 222))),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            controller: pass,
                            decoration: const InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(125, 222, 222, 222))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(179, 222, 222, 222))),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          focusNode: FocusNode(skipTraversal: true),
                          onHover: (value) {
                            setState(() {
                              if (value) {
                                Colors.white;
                              } else {
                                Colors.black;
                              }
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.black),
                          ),
                          onPressed: () {
                            setState(() {
                              ButtonThemeData(
                                buttonColor: const Color.fromARGB(95, 0, 0, 0),
                              );
                            });
                            if (name.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      backgroundColor:
                                          Gredient.gradient.colors[0],
                                      content:
                                          Text('Please enter your Username',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ))));
                            } else if (email.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      backgroundColor:
                                          Gredient.gradient.colors[0],
                                      content: Text('Please enter a email',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))));
                            } else if (!email.text.contains('@gmail.com')) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      backgroundColor:
                                          Gredient.gradient.colors[0],
                                      content:
                                          Text('Please enter a valid email',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ))));
                            } else if (pass.text.isEmpty) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                backgroundColor: Gredient.gradient.colors[0],
                                content: Text(
                                  'Please enter a password',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ));
                            } else if (pass.text.length < 8) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                backgroundColor: Gredient.gradient.colors[0],
                                content: Text(
                                  'Password must contain atleast 8 charactors',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ));
                            } else if (!pass.text.contains(RegExp('[A-Z]'))) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                backgroundColor: Gredient.gradient.colors[0],
                                content: Text(
                                  'Password must contain atleast one Uppercase letter',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ));
                            } else if (!pass.text.contains(RegExp('[a-z]'))) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                backgroundColor: Gredient.gradient.colors[0],
                                content: Text(
                                  'Password must contain atleast one Lowercase letter',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ));
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Homepage()));
                            }
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Sing in with',
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 40,
                          children: [
                            Image.asset(
                              'assets/files/google.png',
                              width: 30,
                              height: 30,
                            ),
                            Image.asset(
                              'assets/files/apple.png',
                              width: 30,
                              height: 30,
                            ),
                            Image.asset(
                              'assets/files/facebook.png',
                              width: 30,
                              height: 30,
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ))),
    );
  }
}
