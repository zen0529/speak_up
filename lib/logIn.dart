import 'dart:js';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speak_up/firebase_auth_implementation/firebase_auth_services.dart';

final _formkey = GlobalKey<FormState>();

@override
class logIn extends StatefulWidget {
  const logIn({super.key});

  @override
  State<logIn> createState() => _logInState();
}

bool? isChecked = false;

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
final FirebaseAuthService _auth = FirebaseAuthService();

class _logInState extends State<logIn> {
  bool isButtonEnabled() {
    return emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Material(
        child: Container(
          height: 871,
          width: 1440,
          child: Stack(
            children: [
              Image.asset(
                'assets/images/logIn/container.png',
                width: double.infinity,
                height: 871,
                fit: BoxFit.fill,
              ),
              Positioned(
                  top: 48,
                  left: 101,
                  child: Image.asset('assets/images/logIn/logo.png')),
              Positioned(
                  top: 70,
                  left: 761,
                  child: Stack(children: [
                    Container(
                        height: 670,
                        width: 567,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(27),
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/logIn/smallContainer.png'),
                                fit: BoxFit.cover))),
                    Positioned(
                      left: 46,
                      top: 54,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Login',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                  color: const Color(0xFF262626)),
                            ),
                            const SizedBox(height: 14),
                            Container(
                              padding: const EdgeInsets.all(0),
                              height: 68,
                              width: 478,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFF6F6F6)),
                              child: Center(
                                child: TextFormField(
                                  controller: emailController,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Email',
                                      prefixIcon: Image.asset(
                                          'assets/icons/username.png'),
                                      hintStyle: GoogleFonts.heebo(
                                        color: const Color(0xFF252525),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                      )),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter an email';
                                    }
                                    return null;
                                  },
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                ),
                              ),
                            ),
                            const SizedBox(height: 21),
                            Container(
                              padding: const EdgeInsets.all(0),
                              height: 68,
                              width: 478,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFF6F6F6)),
                              child: Center(
                                child: TextFormField(
                                  controller: passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Password',
                                      prefixIcon: Image.asset(
                                          'assets/icons/password.png'),
                                      hintStyle: GoogleFonts.heebo(
                                        color: const Color(0xFF252525),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                      )),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your password';
                                    }
                                    return null;
                                  },
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                ),
                              ),
                            ),
                            const SizedBox(height: 21),
                            SizedBox(
                              width: 478,
                              height: 64,
                              child: Material(
                                elevation: 10,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: const Color(0xFF176BCE),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {
                                    if (_formkey.currentState!.validate()) {}
                                    login(context);
                                  },
                                  child: Text("Login",
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      )),
                                ),
                              ),
                            ),
                            const SizedBox(height: 23),
                            Row(
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Text('Forgot Password?',
                                        style: GoogleFonts.heebo(
                                          color: const Color(0xFF176BCE),
                                          fontWeight: FontWeight.normal,
                                          fontSize: 16,
                                        )))
                              ],
                            ),
                            const SizedBox(height: 21),
                            Image.asset('assets/images/logIn/or.png'),
                            const SizedBox(height: 23),
                            SizedBox(
                              width: 478,
                              height: 53,
                              child: Material(
                                elevation: 10,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: const Color(0xFF4167B1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/icons/fb.png'),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Text("Sign In with Facebook",
                                            style: GoogleFonts.inter(
                                              color: const Color(0xFFFFFFFF),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            )),
                                      ],
                                    )),
                              ),
                            ),
                            const SizedBox(
                              height: 13.13,
                            ),
                            SizedBox(
                              width: 478,
                              height: 53,
                              child: Material(
                                elevation: 10,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: const Color(0xFFDE4B38),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                            'assets/icons/Vectorgmail.png'),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Text("Sign In with Google",
                                            style: GoogleFonts.inter(
                                              color: const Color(0xFFFFFFFF),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            )),
                                      ],
                                    )),
                              ),
                            ),
                            const SizedBox(
                              height: 23,
                            ),
                          ]),
                    ),
                    Positioned(
                      bottom: 37,
                      left: 187,
                      child: Row(
                        children: [
                          Text(
                            'Not Yet Registered?',
                            style: GoogleFonts.heebo(
                                color: const Color(0xFF202020),
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/registration');
                              },
                              child: Text(
                                "Sign Up",
                                style: GoogleFonts.heebo(
                                    color: const Color(0xFF176BCE),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ))
                        ],
                      ),
                    )
                  ])),
              Positioned(
                bottom: 342,
                left: 158,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("SPEAKUP",
                        style: GoogleFonts.inter(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w900,
                          fontSize: 78,
                        )),
                    const SizedBox(height: 7),
                    Text(
                        "Empower your voice and communication skills,\njoining countless others on the path to confident\nand articulate expression.",
                        style: GoogleFonts.heebo(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        )),
                  ],
                ),
              ),
              Positioned(
                bottom: 104,
                left: 101,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text('About Us',
                            style: GoogleFonts.inter(
                              color: const Color(0xFFFFFFFF),
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ))),
                    const SizedBox(width: 28),
                    TextButton(
                        onPressed: () {},
                        child: Text('Exercises',
                            style: GoogleFonts.inter(
                              color: const Color(0xFFFFFFFF),
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ))),
                    const SizedBox(width: 28),
                    TextButton(
                        onPressed: () {},
                        child: Text('Learning Paths',
                            style: GoogleFonts.inter(
                              color: const Color(0xFFFFFFFF),
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ))),
                    const SizedBox(width: 28),
                    TextButton(
                      onPressed: () {},
                      child: Text('Pricing',
                          style: GoogleFonts.inter(
                            color: const Color(0xFFFFFFFF),
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> login(BuildContext context) async {
  final auth = FirebaseAuth.instance;

  try {
    UserCredential userCredential = await auth.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );

    // The login was successful
    print('User logged in: ${userCredential.user?.email}');

    // Navigate to the dashboard
    Navigator.pushNamed(context, '/dashboard');
  } catch (e) {
    // Handle login failures
    print('Error logging in: $e');
    // You can provide user feedback here, e.g., show an error message
  }
}
