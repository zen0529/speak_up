import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  String userName = "";

  @override
  void initState() {
    getUserInfo();
    // TODO: implement initState
    super.initState();
  }

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
                        'Hi, $userName', // Replace 'firstname' with the field you want to display
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF424242),
                        ),
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
                            onPressed: () {
                              Navigator.pushNamed(context, '/dashboard');
                            },
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
                            onPressed: () {
                              Navigator.pushNamed(context, '/assessment');
                            },
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
                            onPressed: () {
                              Navigator.pushNamed(context, '/learningpath');
                            },
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
                            onPressed: () {
                              Navigator.pushNamed(context, '/exercises');
                            },
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
                            onPressed: () {
                              Navigator.pushNamed(context, '/settings');
                            },
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
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
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
                Positioned(
                    top: 64,
                    right: 46,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Previous Exercises",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: const Color(0xFF000000)),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Stack(
                          children: [
                            Image.asset('assets/images/dashboard/prev.png'),
                            Positioned(
                              top: 34,
                              left: 36,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                      'assets/images/dashboard/previmg.png'),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                    'Tongue Twister',
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: const Color(0xFF0C356A)),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    'Skill Level: Beginner',
                                    style: GoogleFonts.heebo(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: const Color(0xFF000000)),
                                  ),
                                  Text(
                                    'Tongue twisters are tricky, but they can force you to\nenunciate similar sounding words to make each phrase\nintelligible.',
                                    style: GoogleFonts.heebo(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        color: const Color(0xFF000000)),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  SizedBox(
                                    width: 304,
                                    height: 47,
                                    child: Material(
                                      elevation: 10,
                                      shadowColor: Colors.grey.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(10),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          backgroundColor:
                                              const Color(0xFF176BCE),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text("Continue Exercises",
                                            style: GoogleFonts.inter(
                                              color: const Color(0xFFFFFFFF),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                            )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )),
                Positioned(
                  top: 64,
                  left: 43,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dashboard",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                              color: const Color(0xFF262626)),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Stack(
                          children: [
                            Image.asset(
                                'assets/images/dashboard/skillLevel.png'),
                            Positioned(
                              top: 35,
                              left: 201,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Beginner',
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 28,
                                        color: const Color(0xFF0C356A)),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Current Skill Level',
                                    style: GoogleFonts.heebo(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        color: const Color(0xFF838383)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Text(
                          "Your Progress",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: const Color(0xFF000000)),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Image.asset('assets/images/dashboard/category.png'),
                        const SizedBox(
                          height: 57,
                        ),
                        Text(
                          "Progress Graph",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: const Color(0xFF000000)),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Image.asset(
                            'assets/images/dashboard/Progressgraph.png'),
                        const SizedBox(
                          height: 57,
                        ),
                      ]),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }

  Future<void> getUserInfo() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      // Check if the user is logged in
      if (user != null) {
        // Assuming your user data is stored in Firestore, retrieve the first name
        // Replace 'users' with your Firestore collection name
        DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
            .collection('Users')
            .doc(user.uid)
            .get();

        if (userSnapshot.exists && userSnapshot.data() != null) {
          setState(() {
            userName = userSnapshot['first name'];
          });
        }
      }
    } catch (e) {
      print('Error getting user information: $e');
    }
  }
}
