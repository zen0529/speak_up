import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class assessment4 extends StatefulWidget {
  const assessment4({super.key});

  @override
  State<assessment4> createState() => _assessment4State();
}

class _assessment4State extends State<assessment4> {
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
                ),
                Positioned(
                  top: 114,
                  right: 104,
                  child: Image.asset('assets/images/dashboard/assesscateg.png'),
                ),
                Positioned(
                  top: 78,
                  right: 194,
                  child: Text(
                    'Fluency',
                    style: GoogleFonts.heebo(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: const Color(0xFF303030)),
                  ),
                ),
                Positioned(
                  top: 180,
                  right: 48,
                  child: Text(
                    'Pacing',
                    style: GoogleFonts.heebo(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: const Color(0xFF303030)),
                  ),
                ),
                Positioned(
                  top: 323,
                  right: 79,
                  child: Text(
                    'Grammar',
                    style: GoogleFonts.heebo(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: const Color(0xFF303030)),
                  ),
                ),
                Positioned(
                  top: 323,
                  right: 298,
                  child: Text(
                    'Vocabulary',
                    style: GoogleFonts.heebo(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: const Color(0xFF303030)),
                  ),
                ),
                Positioned(
                  top: 180,
                  right: 340,
                  child: Text(
                    'Pronounciation',
                    style: GoogleFonts.heebo(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: const Color(0xFF303030)),
                  ),
                ),
                Positioned(
                  top: 64,
                  left: 43,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Initial Assessment Test",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                              color: const Color(0xFF262626)),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Text(
                              "Date: 11.29.2023",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: const Color(0xFF6A6A6A)),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              "Duration: 6 min",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: const Color(0xFF6A6A6A)),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              "Words: 329",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: const Color(0xFF6A6A6A)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        Image.asset(
                          'assets/images/dashboard/results.png',
                        ),
                        const SizedBox(
                          height: 120,
                        ),
                        Text(
                          "Feedback",
                          style: GoogleFonts.heebo(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: const Color(0xFF262626)),
                        ),
                        const SizedBox(
                          height: 31,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text('Your skill level is: ',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: const Color(0xFF2C2752))),
                            const SizedBox(
                              width: 14,
                            ),
                            Text('Beginner',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 28,
                                    color: const Color(0xFF0C356A))),
                          ],
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        Row(
                          children: [
                            Text('Pronounciation',
                                style: GoogleFonts.heebo(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: const Color(0xFF176BCE))),
                            const SizedBox(
                              width: 51,
                            ),
                            Text('Fluency',
                                style: GoogleFonts.heebo(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: const Color(0xFF8E8E8E))),
                            const SizedBox(
                              width: 51,
                            ),
                            Text('Pacing',
                                style: GoogleFonts.heebo(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: const Color(0xFF8E8E8E))),
                            const SizedBox(
                              width: 51,
                            ),
                            Text('Vocabulary',
                                style: GoogleFonts.heebo(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: const Color(0xFF8E8E8E))),
                            const SizedBox(
                              width: 51,
                            ),
                            Text('Grammar',
                                style: GoogleFonts.heebo(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: const Color(0xFF8E8E8E))),
                            const SizedBox(
                              width: 51,
                            ),
                            Text('Overall',
                                style: GoogleFonts.heebo(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: const Color(0xFF8E8E8E))),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Image.asset('assets/images/dashboard/Line.png'),
                      ]),
                ),
                Positioned(
                  bottom: 200,
                  right: 685,
                  child: Row(
                    children: [
                      Image.asset('assets/images/dashboard/exclamation.png'),
                      const SizedBox(
                        width: 25,
                      ),
                      Text('You mispronounced 7 words.',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: const Color(0xFF2C2752)))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
