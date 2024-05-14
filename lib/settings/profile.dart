import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speak_up/crud/service.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  late String? uid;
  @override
  void initState() {
    User? user = FirebaseAuth.instance.currentUser;
    uid = user?.uid;
    super.initState();
  }

  final userService _userservice = userService();
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
    return Material(
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
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator(); // Display a loading indicator while fetching data
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else if (!snapshot.hasData || !snapshot.data!.exists) {
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
                        username.text = userData['username'];

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
                                          height: 100,
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
                                              fontSize: 18,
                                              color: const Color(0xFF262626)),
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Name',
                                              style: GoogleFonts.heebo(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16,
                                                  color:
                                                      const Color(0xFF6A6A6A)),
                                            ),
                                            const SizedBox(
                                              width: 98,
                                            ),
                                            Text(
                                              firstname.text,
                                              style: GoogleFonts.heebo(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16,
                                                  color:
                                                      const Color(0xFF2D2D2D)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Address',
                                              style: GoogleFonts.heebo(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16,
                                                  color:
                                                      const Color(0xFF6A6A6A)),
                                            ),
                                            const SizedBox(
                                              width: 81,
                                            ),
                                            Text(
                                              address.text,
                                              style: GoogleFonts.heebo(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16,
                                                  color:
                                                      const Color(0xFF2D2D2D)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Gender',
                                              style: GoogleFonts.heebo(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16,
                                                  color:
                                                      const Color(0xFF6A6A6A)),
                                            ),
                                            const SizedBox(
                                              width: 89,
                                            ),
                                            Text(
                                              'Female',
                                              style: GoogleFonts.heebo(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16,
                                                  color:
                                                      const Color(0xFF2D2D2D)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Date of Birth',
                                              style: GoogleFonts.heebo(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16,
                                                  color:
                                                      const Color(0xFF6A6A6A)),
                                            ),
                                            const SizedBox(
                                              width: 51,
                                            ),
                                            Text(
                                              dateofbirth.text,
                                              style: GoogleFonts.heebo(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16,
                                                  color:
                                                      const Color(0xFF2D2D2D)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Email',
                                              style: GoogleFonts.heebo(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16,
                                                  color:
                                                      const Color(0xFF6A6A6A)),
                                            ),
                                            const SizedBox(
                                              width: 101,
                                            ),
                                            Text(
                                              email.text,
                                              style: GoogleFonts.heebo(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16,
                                                  color:
                                                      const Color(0xFF2D2D2D)),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 21,
                                        ),
                                        SizedBox(
                                          width: 158,
                                          height: 37,
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
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              onPressed: () {
                                                Navigator.pushNamed(
                                                    context, '/editprofile');
                                              },
                                              child: Text("Edit Profile",
                                                  style: GoogleFonts.inter(
                                                    color:
                                                        const Color(0xFF0C356A),
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 12,
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
                                  height: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Account',
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                          color: const Color(0xFF262626)),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Username',
                                          style: GoogleFonts.heebo(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16,
                                              color: const Color(0xFF6A6A6A)),
                                        ),
                                        const SizedBox(
                                          width: 68,
                                        ),
                                        Text(
                                          username.text,
                                          style: GoogleFonts.heebo(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16,
                                              color: const Color(0xFF2D2D2D)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Password',
                                          style: GoogleFonts.heebo(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16,
                                              color: const Color(0xFF6A6A6A)),
                                        ),
                                        const SizedBox(
                                          width: 68,
                                        ),
                                        Text(
                                          '********',
                                          style: GoogleFonts.heebo(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16,
                                              color: const Color(0xFF2D2D2D)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 21,
                                    ),
                                    Row(children: [
                                      const SizedBox(
                                        width: 139,
                                      ),
                                      SizedBox(
                                        width: 158,
                                        height: 37,
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
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            onPressed: () {},
                                            child: Text("Change Password",
                                                style: GoogleFonts.inter(
                                                  color:
                                                      const Color(0xFF0C356A),
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 12,
                                                )),
                                          ),
                                        ),
                                      ),
                                    ]),
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Subscription Plan',
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                          color: const Color(0xFF262626)),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Subscribed Plan',
                                          style: GoogleFonts.heebo(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16,
                                              color: const Color(0xFF6A6A6A)),
                                        ),
                                        const SizedBox(
                                          width: 28,
                                        ),
                                        Text(
                                          'Free Plan',
                                          style: GoogleFonts.heebo(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16,
                                              color: const Color(0xFF2D2D2D)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(children: [
                                      const SizedBox(
                                        width: 139,
                                      ),
                                      SizedBox(
                                        width: 158,
                                        height: 37,
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
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.pushNamed(
                                                  context, '/editprofile');
                                            },
                                            child: Text("Change Plan",
                                                style: GoogleFonts.inter(
                                                  color:
                                                      const Color(0xFF0C356A),
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 12,
                                                )),
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ],
                                ),
                                const SizedBox(
                                  height: 22,
                                ),
                                Container(
                                  height: 1,
                                  width: 911,
                                  color: const Color(0xFFE3E3E3),
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 410,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        _userservice.deleteAccount();
                                        Navigator.pushNamed(context, '/login');
                                      },
                                      child: Text('Delete Account',
                                          style: GoogleFonts.inter(
                                            color: const Color(0xFF747C85),
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16,
                                          )),
                                    ),
                                  ],
                                )
                              ]),
                        );
                      }
                    })
              ],
            ),
          )
        ],
      ),
    ));
  }
}
