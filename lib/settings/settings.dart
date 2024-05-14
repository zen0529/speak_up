import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class setting extends StatelessWidget {
  const setting({super.key});

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
                  left: 43,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Settings",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                              color: const Color(0xFF262626)),
                        ),
                        const SizedBox(
                          height: 43,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/profile');
                            },
                            child: Row(
                              children: [
                                const Image(
                                  width: 17,
                                  height: 17,
                                  image: Svg(
                                      'assets/settingsSVGs/Vectorprofile.svg'),
                                ),
                                const SizedBox(
                                  width: 11.96,
                                ),
                                Text('Profile',
                                    style: GoogleFonts.heebo(
                                      color: const Color(0xFF494B4D),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    )),
                              ],
                            )),
                        const SizedBox(
                          height: 13,
                        ),
                        Container(
                          width: 880,
                          height: 1,
                          color: Color(0xFFF1F1F1),
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                const Image(
                                  width: 17,
                                  height: 17,
                                  image: Svg(
                                      'assets/settingsSVGs/Vectorresetpass.svg'),
                                ),
                                const SizedBox(
                                  width: 11.96,
                                ),
                                Text('Reset Password',
                                    style: GoogleFonts.heebo(
                                      color: const Color(0xFF494B4D),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    )),
                              ],
                            )),
                        const SizedBox(
                          height: 13,
                        ),
                        Container(
                          width: 880,
                          height: 1,
                          color: Color(0xFFF1F1F1),
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                const Image(
                                  width: 17,
                                  height: 17,
                                  image: Svg(
                                      'assets/settingsSVGs/Vectorsubscription.svg'),
                                ),
                                const SizedBox(
                                  width: 11.96,
                                ),
                                Text('Subscription Plan',
                                    style: GoogleFonts.heebo(
                                      color: const Color(0xFF494B4D),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    )),
                              ],
                            )),
                        const SizedBox(
                          height: 13,
                        ),
                        Container(
                          width: 880,
                          height: 1,
                          color: Color(0xFFF1F1F1),
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                const Image(
                                  width: 17,
                                  height: 17,
                                  image:
                                      Svg('assets/settingsSVGs/VectorFAQ.svg'),
                                ),
                                const SizedBox(
                                  width: 11.96,
                                ),
                                Text('Frequently Asked Questions',
                                    style: GoogleFonts.heebo(
                                      color: const Color(0xFF494B4D),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    )),
                              ],
                            )),
                        const SizedBox(
                          height: 13,
                        ),
                        Container(
                          width: 880,
                          height: 1,
                          color: Color(0xFFF1F1F1),
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                const Image(
                                  width: 17,
                                  height: 17,
                                  image: Svg(
                                      'assets/settingsSVGs/Vectorprivacy.svg'),
                                ),
                                const SizedBox(
                                  width: 11.96,
                                ),
                                Text('Privacy and Policy',
                                    style: GoogleFonts.heebo(
                                      color: const Color(0xFF494B4D),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    )),
                              ],
                            )),
                        const SizedBox(
                          height: 13,
                        ),
                        Container(
                          width: 880,
                          height: 1,
                          color: Color(0xFFF1F1F1),
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                const Image(
                                  width: 17,
                                  height: 17,
                                  image: Svg(
                                      'assets/settingsSVGs/VectorTerms.svg'),
                                ),
                                const SizedBox(
                                  width: 11.96,
                                ),
                                Text('Terms and Service',
                                    style: GoogleFonts.heebo(
                                      color: const Color(0xFF494B4D),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    )),
                              ],
                            )),
                        const SizedBox(
                          height: 13,
                        ),
                        Container(
                          width: 880,
                          height: 1,
                          color: Color(0xFFF1F1F1),
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                const Image(
                                  width: 17,
                                  height: 17,
                                  image: Svg(
                                      'assets/settingsSVGs/Vectorabout.svg'),
                                ),
                                const SizedBox(
                                  width: 11.96,
                                ),
                                Text('About',
                                    style: GoogleFonts.heebo(
                                      color: const Color(0xFF494B4D),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    )),
                              ],
                            )),
                        const SizedBox(
                          height: 13,
                        ),
                        Container(
                          width: 880,
                          height: 1,
                          color: Color(0xFFF1F1F1),
                        )
                      ]),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
