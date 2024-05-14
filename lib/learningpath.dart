import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class learningpath extends StatefulWidget {
  const learningpath({super.key});

  @override
  State<learningpath> createState() => _learningpathState();
}

class _learningpathState extends State<learningpath> {
  late String? uid;
  @override
  void initState() {
    User? user = FirebaseAuth.instance.currentUser;
    uid = user?.uid;
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
                  width: 1029, // adjust the width based on your image size
                  height: 836, // adjust the height based on your image size
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 64,
                  left: 43,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Learning Paths",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 28,
                          color: const Color(0xFF262626),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        height: 1000, // Set a fixed height if needed
                        width: 903, // adjust the width based on your image size
                        child: StreamBuilder<QuerySnapshot>(
                          stream: FirebaseFirestore.instance
                              .collection('Users')
                              .doc(uid)
                              .collection('learningpath')
                              .snapshots(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return CircularProgressIndicator();
                            } else if (snapshot.hasError) {
                              return Text('Error: ${snapshot.error}');
                            } else if (!snapshot.hasData ||
                                snapshot.data!.docs.isEmpty) {
                              return const Text('No learning paths found');
                            } else {
                              return ListView.separated(
                                scrollDirection: Axis.vertical,
                                itemCount: snapshot.data!.docs.length,
                                separatorBuilder: (context, index) =>
                                    SizedBox(height: 20),
                                itemBuilder: (context, index) {
                                  var path = snapshot.data!.docs[index];
                                  var progress = path['Progress'];
                                  var title = path['Title'];
                                  var completed = path['completed'];

                                  return Container(
                                    width: 800,
                                    height: 100,
                                    margin: const EdgeInsets.only(right: 16),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEBEBEB),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Title: $title',
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 19,
                                            color: const Color(0xFF292929),
                                          ),
                                        ),
                                        Text(
                                          'Progress: $progress',
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14,
                                            color: const Color(0xFF1A1A1A),
                                          ),
                                        ),
                                        Text(
                                          'Completed: $completed',
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14,
                                            color: const Color(0xFF1A1A1A),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
