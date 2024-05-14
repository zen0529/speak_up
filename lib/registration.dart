import 'dart:js';
import 'dart:js_interop';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speak_up/crud/service.dart';
import 'package:speak_up/crud/users.dart';
import 'package:speak_up/firebase_auth_implementation/firebase_auth_services.dart';

final _formkey = GlobalKey<FormState>();
final email = TextEditingController();
final username = TextEditingController();
final password = TextEditingController();
final confirmPass = TextEditingController();
final firstname = TextEditingController();
final middlename = TextEditingController();
final lastname = TextEditingController();
final address = TextEditingController();
var gender = null;
final dateofbirth = TextEditingController();
var valpassword;

final FirebaseAuthService _auth = FirebaseAuthService();
final userService _userservice = userService();

class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  String? validateEmail(String? email) {
    RegExp emailRegex = RegExp(r'^[\w\.-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$');
    final emailIsValid = emailRegex.hasMatch(email ?? '');
    if (!emailIsValid) {
      return 'Please Enter a valid email';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: SingleChildScrollView(
        child: Material(
          child: Stack(
            children: [
              Image.asset(
                'assets/images/registration/registerbg.png',
                width: double.infinity,
                height: 1095,
                fit: BoxFit.fill,
              ),
              Positioned(
                  top: 48,
                  left: 101,
                  child: Image.asset(
                      'assets/images/registration/speakUpBlue.png')),
              Positioned(
                right: 82,
                top: 64,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text('About Us',
                            style: GoogleFonts.inter(
                              color: const Color(0xFF232323),
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ))),
                    const SizedBox(width: 28),
                    TextButton(
                        onPressed: () {},
                        child: Text('Exercises',
                            style: GoogleFonts.inter(
                              color: const Color(0xFF232323),
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ))),
                    const SizedBox(width: 28),
                    TextButton(
                        onPressed: () {},
                        child: Text('Learning Paths',
                            style: GoogleFonts.inter(
                              color: const Color(0xFF232323),
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ))),
                    const SizedBox(width: 28),
                    TextButton(
                      onPressed: () {},
                      child: Text('Pricing',
                          style: GoogleFonts.inter(
                            color: const Color(0xFF232323),
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          )),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 515,
                top: 156,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Register',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: const Color(0xFF262626)),
                      ),
                      const SizedBox(height: 14),
                      Text(
                        'Email',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            color: const Color(0xFF262626)),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        height: 68,
                        width: 478,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFFDFDFD)),
                        child: Center(
                          child: TextFormField(
                            controller: email,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'sample@email.com',
                                hintStyle: GoogleFonts.heebo(
                                  color: const Color(0xFF6A6A6A),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20,
                                )),
                            validator: validateEmail,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Username',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            color: const Color(0xFF262626)),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        height: 68,
                        width: 478,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFFDFDFD)),
                        child: Center(
                          child: TextFormField(
                            controller: username,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Dela Cruz',
                                hintStyle: GoogleFonts.heebo(
                                  color: const Color(0xFF6A6A6A),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20,
                                )),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a username';
                              }
                              return null;
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Password',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            color: const Color(0xFF262626)),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        height: 68,
                        width: 478,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFFDFDFD)),
                        child: Center(
                          child: TextFormField(
                            controller: password,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Dela Cruz',
                                hintStyle: GoogleFonts.heebo(
                                  color: const Color(0xFF6A6A6A),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20,
                                )),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a password';
                              }
                              return null;
                            },
                            onSaved: (value) => valpassword = value,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Confirm Password',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            color: const Color(0xFF262626)),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        height: 68,
                        width: 478,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFFDFDFD)),
                        child: Center(
                          child: TextFormField(
                            controller: confirmPass,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Dela Cruz',
                                hintStyle: GoogleFonts.heebo(
                                  color: const Color(0xFF6A6A6A),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20,
                                )),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please confirm your password';
                              } else if (value != password.text) {
                                return 'Password did\'t match. Try again.';
                              }
                              return null;
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
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
                              if (_formkey.currentState!.validate()) {
                                Navigator.pushNamed(context, '/registration2');
                              }
                            },
                            child: Text("Proceed",
                                style: GoogleFonts.inter(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                )),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Image.asset('assets/images/registration/or.png'),
                      const SizedBox(height: 29),
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/icons/Vectorgmail.png'),
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
            ],
          ),
        ),
      ),
    );
  }
}

class registerPersonalDetails extends StatefulWidget {
  const registerPersonalDetails({super.key});

  @override
  State<registerPersonalDetails> createState() =>
      _registerPersonalDetailsState();
}

class _registerPersonalDetailsState extends State<registerPersonalDetails> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/registration/registerbg.png',
              width: double.infinity,
              height: 1368,
              fit: BoxFit.fill,
            ),
            Positioned(
                top: 48,
                left: 101,
                child:
                    Image.asset('assets/images/registration/speakUpBlue.png')),
            Positioned(
              right: 82,
              top: 64,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text('About Us',
                          style: GoogleFonts.inter(
                            color: const Color(0xFF232323),
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ))),
                  const SizedBox(width: 28),
                  TextButton(
                      onPressed: () {},
                      child: Text('Exercises',
                          style: GoogleFonts.inter(
                            color: const Color(0xFF232323),
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ))),
                  const SizedBox(width: 28),
                  TextButton(
                      onPressed: () {},
                      child: Text('Learning Paths',
                          style: GoogleFonts.inter(
                            color: const Color(0xFF232323),
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ))),
                  const SizedBox(width: 28),
                  TextButton(
                    onPressed: () {},
                    child: Text('Pricing',
                        style: GoogleFonts.inter(
                          color: const Color(0xFF232323),
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        )),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 156,
              left: 481,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/registration');
                  },
                  child: const Image(
                      image:
                          AssetImage('assets/images/registration/Goback.png'))),
            ),
            Positioned(
              left: 515,
              top: 193,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Personal Details',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: const Color(0xFF262626)),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      'First Name',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: const Color(0xFF262626)),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      height: 68,
                      width: 478,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFFDFDFD)),
                      child: Center(
                        child: TextFormField(
                          controller: firstname,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Juan',
                              hintStyle: GoogleFonts.heebo(
                                color: const Color(0xFF6A6A6A),
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              )),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a username';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Middle Name  ',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: const Color(0xFF262626)),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      height: 68,
                      width: 478,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFFDFDFD)),
                      child: Center(
                        child: TextFormField(
                          controller: middlename,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Gonzales',
                              hintStyle: GoogleFonts.heebo(
                                color: const Color(0xFF6A6A6A),
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              )),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a username';
                            }

                            return null;
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Last Name',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: const Color(0xFF262626)),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      height: 68,
                      width: 478,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFFDFDFD)),
                      child: Center(
                        child: TextFormField(
                          controller: lastname,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Dela Cruz',
                              hintStyle: GoogleFonts.heebo(
                                color: const Color(0xFF6A6A6A),
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              )),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a username';
                            }

                            return null;
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Address',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: const Color(0xFF262626)),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      height: 68,
                      width: 478,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFFDFDFD)),
                      child: Center(
                        child: TextFormField(
                          controller: address,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Street,City',
                              hintStyle: GoogleFonts.heebo(
                                color: const Color(0xFF6A6A6A),
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              )),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a username';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Gender',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: const Color(0xFF262626)),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      height: 68,
                      width: 478,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFDFDFD),
                      ),
                      child: Center(
                        child: DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Select Gender',
                            hintStyle: GoogleFonts.heebo(
                              color: const Color(0xFF6A6A6A),
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                            ),
                          ),
                          value: gender, // Initially, no value is selected
                          onChanged: (idk) {
                            setState(() {
                              gender = idk!;
                            });
                          },
                          items: <String>['Male', 'Female', 'Other']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please select a gender';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Date of Birth',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: const Color(0xFF262626)),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      height: 68,
                      width: 478,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFFDFDFD)),
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Month/Day/Year',
                              hintStyle: GoogleFonts.heebo(
                                color: const Color(0xFF6A6A6A),
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              )),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a username';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
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
                          onPressed: () async {
                            if (_formkey.currentState!.validate()) {
                              var adduser = user(
                                  email: email.text,
                                  username: username.text,
                                  password: password.text,
                                  firstname: firstname.text,
                                  middlename: middlename.text,
                                  lastname: lastname.text,
                                  address: address.text,
                                  gender: gender,
                                  dateofbirth: dateofbirth.text);

                              _userservice.registerUser(adduser);
                              //_signUp();
                              Navigator.pushNamed(context, '/login');
                            }
                          },
                          child: Text("Register",
                              style: GoogleFonts.inter(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Image.asset('assets/images/registration/or.png'),
                    const SizedBox(height: 29),
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/icons/Vectorgmail.png'),
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
                    Row(
                      children: [
                        const SizedBox(
                          width: 135,
                        ),
                        Text(
                          'Already Registered?',
                          style: GoogleFonts.heebo(
                              color: const Color(0xFF202020),
                              fontWeight: FontWeight.normal,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Sign In",
                              style: GoogleFonts.heebo(
                                  color: const Color(0xFF176BCE),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ))
                      ],
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

void _signUp() async {
  String Email = email.text;
  String Password = password.text;

  User? user = await _auth.signUpwithEmailAndPassword(Email, Password);

  if (user != null) {
    print("user has successfully created");
  } else {
    print("some error happened");
  }
}
