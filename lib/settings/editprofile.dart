import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speak_up/crud/service.dart';
import 'package:speak_up/crud/users.dart';
import 'package:speak_up/registration.dart';

class editProfile extends StatefulWidget {
  const editProfile({super.key});

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  final userService _userservice = userService();
  late String? uid;
  @override
  void initState() {
    User? user = FirebaseAuth.instance.currentUser;
    uid = user?.uid;
    super.initState();
  }

  final _formkey = GlobalKey<FormState>();
  final email = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final confirmPass = TextEditingController();
  final firstname = TextEditingController();
  final middlename = TextEditingController();
  final lastname = TextEditingController();
  final address = TextEditingController();
  var gender;
  final dateofbirth = TextEditingController();
  var valpassword;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Material(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 1020,
              width: 1550,
              color: const Color(0xFFF0F3F7),
            ),
            Positioned(
              bottom: 919,
              child: Stack(
                children: [
                  Container(
                    width: 1550,
                    height: 101,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x000000)
                              .withOpacity(0.04), // 4% transparency
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 22,
                    right: 52,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/dashboard/notification.png'),
                        const SizedBox(
                          width: 8.33,
                        ),
                        Text(
                          'Hi, Amanda',
                          style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF424242)),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Image.asset('assets/images/dashboard/profileicon.png'),
                        const SizedBox(
                          width: 19,
                        ),
                        Image.asset('assets/images/dashboard/Polygon 2.png'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                left: 0,
                child: Stack(
                  children: [
                    Container(
                      width: 354,
                      height: 1036,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x000000)
                                .withOpacity(0.04), // 4% transparency
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 64,
                      top: 101,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                              'assets/images/registration/speakUpBlue.png'),
                          const SizedBox(
                            height: 75,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Image.asset(
                                      'assets/images/dashboard/dashboard.png'),
                                  const SizedBox(
                                    width: 11.96,
                                  ),
                                  Text('Dashboard',
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFF747C85),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                      )),
                                ],
                              )),
                          const SizedBox(
                            height: 38,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Image.asset(
                                      'assets/images/dashboard/headphone.png'),
                                  const SizedBox(
                                    width: 11.96,
                                  ),
                                  Text('Assessment',
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFF747C85),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                      )),
                                ],
                              )),
                          const SizedBox(
                            height: 38,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Image.asset(
                                      'assets/images/dashboard/learningpath.png'),
                                  const SizedBox(
                                    width: 11.96,
                                  ),
                                  Text('Learning Paths',
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFF747C85),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                      )),
                                ],
                              )),
                          const SizedBox(
                            height: 38,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Image.asset(
                                      'assets/images/dashboard/exercises.png'),
                                  const SizedBox(
                                    width: 11.96,
                                  ),
                                  Text('Exercises/Activities',
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFF747C85),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                      )),
                                ],
                              )),
                          const SizedBox(
                            height: 38,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Image.asset(
                                      'assets/images/dashboard/price.png'),
                                  const SizedBox(
                                    width: 11.96,
                                  ),
                                  Text('Price',
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFF747C85),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                      )),
                                ],
                              )),
                          const SizedBox(
                            height: 38,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Image.asset(
                                      'assets/images/dashboard/settings.png'),
                                  const SizedBox(
                                    width: 11.96,
                                  ),
                                  Text('Settings',
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFF747C85),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                      )),
                                ],
                              )),
                          const SizedBox(
                            height: 351,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Image.asset(
                                      'assets/images/dashboard/logout.png'),
                                  const SizedBox(
                                    width: 11.96,
                                  ),
                                  Text('Logout',
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                      )),
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                )),
            Positioned(
              bottom: 20,
              right: 45,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/dashboard/rectangleDash.png',
                  ),
                  StreamBuilder<DocumentSnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection('Users')
                          .doc(uid)
                          .snapshots(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const CircularProgressIndicator(); // Display a loading indicator while fetching data
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else if (!snapshot.hasData ||
                            !snapshot.data!.exists) {
                          return const Text(
                              'User data not found'); // Handle case where document doesn't exist
                        } else {
                          // User data exists, update your form fields with the fetched data
                          Map<String, dynamic> userData =
                              snapshot.data!.data() as Map<String, dynamic>;

                          // Update your text controllers with the fetched data
                          firstname.text = userData['first name'];
                          middlename.text = userData['middle name'];
                          lastname.text = userData['last name'];
                          address.text = userData['address'];
                          email.text = userData['email'];
                          gender = userData['gender'];
                          dateofbirth.text = userData['Date of Birth'];

                          // ... continue for other fields
                          return Positioned(
                            top: 42,
                            left: 55,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Profile",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 28,
                                        color: const Color(0xFF262626)),
                                  ),
                                  const SizedBox(
                                    height: 26,
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                              'assets/settingsSVGs/profilepic.png'),
                                          const SizedBox(
                                            height: 12,
                                          ),
                                          Text(
                                            'Profile Picture',
                                            style: GoogleFonts.inter(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                color: const Color(0xFF262626)),
                                          ),
                                          const SizedBox(
                                            height: 400,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 44,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Personal Details',
                                            style: GoogleFonts.inter(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 25,
                                                color: const Color(0xFF262626)),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'First Name',
                                                style: GoogleFonts.heebo(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 20,
                                                    color: const Color(
                                                        0xFF6A6A6A)),
                                              ),
                                              const SizedBox(
                                                width: 58,
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                height: 50,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: const Color(
                                                          0xFFC1C1C1)), // Define the border here
                                                  color:
                                                      const Color(0xFFFDFDFD),
                                                ),
                                                child: Center(
                                                  child: TextFormField(
                                                    style: GoogleFonts.heebo(
                                                      color: Color.fromARGB(
                                                          255, 39, 39, 39),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 20,
                                                    ),
                                                    controller: firstname,
                                                    decoration: InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        hintText: 'Juan',
                                                        hintStyle:
                                                            GoogleFonts.heebo(
                                                          color: const Color(
                                                              0xFF6A6A6A),
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 20,
                                                        )),
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 18,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Middle Name',
                                                style: GoogleFonts.heebo(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 20,
                                                    color: const Color(
                                                        0xFF6A6A6A)),
                                              ),
                                              const SizedBox(
                                                width: 37,
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                height: 50,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: const Color(
                                                          0xFFC1C1C1)), // Define the border here
                                                  color:
                                                      const Color(0xFFFDFDFD),
                                                ),
                                                child: Center(
                                                  child: TextFormField(
                                                    style: GoogleFonts.heebo(
                                                      color: Color.fromARGB(
                                                          255, 39, 39, 39),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 20,
                                                    ),
                                                    controller: middlename,
                                                    decoration: InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        hintText: 'Miguel',
                                                        hintStyle:
                                                            GoogleFonts.heebo(
                                                          color: const Color(
                                                              0xFF6A6A6A),
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 20,
                                                        )),
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 18,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Last Name',
                                                style: GoogleFonts.heebo(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 20,
                                                    color: const Color(
                                                        0xFF6A6A6A)),
                                              ),
                                              const SizedBox(
                                                width: 59,
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                height: 50,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: const Color(
                                                          0xFFC1C1C1)), // Define the border here
                                                  color:
                                                      const Color(0xFFFDFDFD),
                                                ),
                                                child: Center(
                                                  child: TextFormField(
                                                    style: GoogleFonts.heebo(
                                                      color: Color.fromARGB(
                                                          255, 39, 39, 39),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 20,
                                                    ),
                                                    controller: lastname,
                                                    decoration: InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        hintText: 'Dela Cruz',
                                                        hintStyle:
                                                            GoogleFonts.heebo(
                                                          color: const Color(
                                                              0xFF6A6A6A),
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 20,
                                                        )),
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 18,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Address',
                                                style: GoogleFonts.heebo(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 20,
                                                    color: const Color(
                                                        0xFF6A6A6A)),
                                              ),
                                              const SizedBox(
                                                width: 81,
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                height: 50,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: const Color(
                                                          0xFFC1C1C1)), // Define the border here
                                                  color:
                                                      const Color(0xFFFDFDFD),
                                                ),
                                                child: Center(
                                                  child: TextFormField(
                                                    style: GoogleFonts.heebo(
                                                      color: Color.fromARGB(
                                                          255, 39, 39, 39),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 20,
                                                    ),
                                                    controller: address,
                                                    decoration: InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        // hintText:
                                                        //     'sample@email.com',
                                                        hintStyle:
                                                            GoogleFonts.heebo(
                                                          color: const Color(
                                                              0xFF6A6A6A),
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 20,
                                                        )),
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 18,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Gender',
                                                style: GoogleFonts.heebo(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 20,
                                                    color: const Color(
                                                        0xFF6A6A6A)),
                                              ),
                                              const SizedBox(
                                                width: 89,
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                height: 50,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: const Color(
                                                          0xFFC1C1C1)), // Define the border here
                                                  color:
                                                      const Color(0xFFFDFDFD),
                                                ),
                                                child: Center(
                                                  child:
                                                      DropdownButtonFormField<
                                                          String>(
                                                    style: GoogleFonts.heebo(
                                                      color: Color.fromARGB(
                                                          255, 39, 39, 39),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 20,
                                                    ),
                                                    decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: 'Select Gender',
                                                      hintStyle:
                                                          GoogleFonts.heebo(
                                                        color: const Color(
                                                            0xFF6A6A6A),
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                    value:
                                                        gender, // Initially, no value is selected
                                                    onChanged: (value) {
                                                      setState(() {
                                                        gender = value;
                                                      });
                                                    },
                                                    items: <String>[
                                                      'Male',
                                                      'Female',
                                                      'Other'
                                                    ].map<
                                                            DropdownMenuItem<
                                                                String>>(
                                                        (String value) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: value,
                                                        child: Text(value),
                                                      );
                                                    }).toList(),
                                                    validator: (value) {
                                                      if (value == null ||
                                                          value.isEmpty) {
                                                        return 'Please select a gender';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 18,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Date of Birth',
                                                style: GoogleFonts.heebo(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 20,
                                                    color: const Color(
                                                        0xFF6A6A6A)),
                                              ),
                                              const SizedBox(
                                                width: 40,
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                height: 50,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: const Color(
                                                          0xFFC1C1C1)), // Define the border here
                                                  color:
                                                      const Color(0xFFFDFDFD),
                                                ),
                                                child: Center(
                                                  child: TextFormField(
                                                    style: GoogleFonts.heebo(
                                                      color: Color.fromARGB(
                                                          255, 39, 39, 39),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 20,
                                                    ),
                                                    controller: dateofbirth,
                                                    decoration: InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        hintText: '10/29/2001',
                                                        hintStyle:
                                                            GoogleFonts.heebo(
                                                          color: const Color(
                                                              0xFF6A6A6A),
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 20,
                                                        )),
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 18,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Email',
                                                style: GoogleFonts.heebo(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 20,
                                                    color: const Color(
                                                        0xFF6A6A6A)),
                                              ),
                                              const SizedBox(
                                                width: 101,
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                height: 50,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: const Color(
                                                          0xFFC1C1C1)), // Define the border here
                                                  color:
                                                      const Color(0xFFFDFDFD),
                                                ),
                                                child: Center(
                                                  child: TextFormField(
                                                    style: GoogleFonts.heebo(
                                                      color: Color.fromARGB(
                                                          255, 39, 39, 39),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 20,
                                                    ),
                                                    controller: email,
                                                    decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText:
                                                          'juanMiguel@email.com',
                                                      hintStyle:
                                                          GoogleFonts.heebo(
                                                        color: const Color(
                                                            0xFF6A6A6A),
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 20,
                                                      ),
                                                      // Adjust the style property for the entered text
                                                    ),
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          SizedBox(
                                            width: 200,
                                            height: 45,
                                            child: Material(
                                              elevation: 10,
                                              shadowColor:
                                                  Colors.grey.withOpacity(0.5),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  elevation: 0,
                                                  backgroundColor:
                                                      const Color(0xFFFFFFFF),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  var adduser = user(
                                                      email: email.text,
                                                      username: username.text,
                                                      password: password.text,
                                                      firstname: firstname.text,
                                                      middlename:
                                                          middlename.text,
                                                      lastname: lastname.text,
                                                      address: address.text,
                                                      gender: gender,
                                                      dateofbirth:
                                                          dateofbirth.text);
                                                  _userservice
                                                      .updateUserData(adduser);
                                                },
                                                child: Text("Save Changes",
                                                    style: GoogleFonts.inter(
                                                      color: const Color(
                                                          0xFF0C356A),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 16,
                                                    )),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    height: 1,
                                    width: 911,
                                    color: const Color(0xFFE3E3E3),
                                  ),
                                  const SizedBox(
                                    height: 22,
                                  ),
                                ]),
                          );
                        }
                      })
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
