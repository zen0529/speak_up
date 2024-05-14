import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class assessment2 extends StatefulWidget {
  const assessment2({super.key});

  @override
  State<assessment2> createState() => _assessment2State();
}

class _assessment2State extends State<assessment2> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Stack(
        children: [
          Image.asset(
            'assets/images/dashboard/assessmentbg.png',
            width: double.infinity,
            fit: BoxFit.fill,
            height: 1020,
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
              top: 189,
              right: 303,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Assessment',
                      style: GoogleFonts.inter(
                        color: const Color(0xFF262626),
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                      )),
                  const SizedBox(
                    height: 1,
                  ),
                  Text('We’ll assess your skill to give you a starting point',
                      style: GoogleFonts.inter(
                        color: const Color(0xFF6A6A6A),
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      )),
                  const SizedBox(
                    height: 16,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 325.92,
                        width: 479,
                        decoration: const BoxDecoration(
                            color: const Color(0xFFF3F8FF),
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(24))),
                      ),
                      Positioned(
                          left: 126,
                          child:
                              Image.asset('assets/images/dashboard/mic.png')),
                    ],
                  ),
                  const SizedBox(
                    height: 50.08,
                  ),
                  Row(
                    children: [
                      Text('Click on start recording and say:',
                          style: GoogleFonts.inter(
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          )),
                      const SizedBox(
                        width: 87,
                      ),
                      Text('Hello! How are you?',
                          style: GoogleFonts.inter(
                            color: const Color(0xFF176BCE),
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: 479,
                    height: 62,
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
                          Navigator.pushNamed(context, '/assessment3');
                        },
                        child: Text("Start Recording",
                            style: GoogleFonts.inter(
                              color: const Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 41,
                  ),
                  Text('Take Note:',
                      style: GoogleFonts.inter(
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                      'During assessment, there will be multiple activities that you need to\nparticipate. Each activity is used to assess each areas of improvement.\nEach activities holds a lot of weight  so we recommend to do your best every\ntest. Enjoy and Goodluck!',
                      style: GoogleFonts.heebo(
                        color: const Color(0xFF414141),
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      )),
                ],
              ))
        ],
      ),
    ));
  }
}
