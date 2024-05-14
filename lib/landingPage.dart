import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speak_up/lists/ReviewLists.dart';

class landingPage extends StatefulWidget {
  const landingPage({super.key});

  @override
  State<landingPage> createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Image.asset(
                  'assets/images/landingPage/TopLandingPage_blue.png',
                  width: double.infinity,
                  height: 804,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: 46,
                  left: 84,
                  right: 60,
                  child: Row(
                    children: [
                      Image.asset('assets/icons/iconwithname.png'),
                      const SizedBox(width: 331),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text('About Us',
                                    style: GoogleFonts.inter(
                                      color: const Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20,
                                    ))),
                            TextButton(
                                onPressed: () {},
                                child: Text('Exercises',
                                    style: GoogleFonts.inter(
                                      color: const Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20,
                                    ))),
                            TextButton(
                                onPressed: () {},
                                child: Text('Learning Paths',
                                    style: GoogleFonts.inter(
                                      color: const Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20,
                                    ))),
                            TextButton(
                              onPressed: () {},
                              child: Text('Pricing',
                                  style: GoogleFonts.inter(
                                    color: const Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20,
                                  )),
                            ),
                            Container(
                              width: 147,
                              height: 44,
                              decoration: const BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: const Color(0xFFFFFFFF)),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/login');
                                },
                                child: Center(
                                  child: Text("Login",
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFF176BCE),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      )),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 169,
                  left: 160,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Speak Better,\nExcel Further',
                              style: GoogleFonts.inter(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w800,
                                fontSize: 78,
                              )),
                          Text(
                              'Empower your voice and communication\nskills, joining countless others on the path to\nconfident and articulate expression.',
                              style: GoogleFonts.heebo(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              )),
                          const SizedBox(height: 23),
                          Row(
                            children: [
                              SizedBox(
                                width: 224,
                                height: 48,
                                child: Material(
                                  elevation: 10,
                                  shadowColor: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: const Color(0xFFE55E48),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/login');
                                    },
                                    child: Text("Get Started",
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFFFFFFFF),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        )),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 21),
                              SizedBox(
                                width: 224,
                                height: 48,
                                child: Material(
                                  elevation: 10,
                                  shadowColor: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: const Color(0xFFFFFFFFF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text("Browse Exercise",
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFF176BCE),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(width: 100),
                      Image.asset(
                          'assets/images/landingPage/web_consultation 1.png')
                    ],
                  ),
                )
              ]),
              Container(
                width: double.infinity,
                height: 2621,
                child: Stack(children: [
                  Positioned(
                      top: 154,
                      left: 0,
                      child: Image.asset(
                          'assets/images/landingPage/Blue_ellipse.png')),
                  Positioned(
                      top: 5,
                      right: 0,
                      child: Image.asset(
                          'assets/images/landingPage/Orange_ellipse.png')),
                  Positioned(
                    top: 265,
                    left: 181,
                    right: 181,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'AI-powered Practice to Cultivate\nMastery in The Art of Speaking',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w900,
                              fontSize: 48,
                              color: const Color(0xFF1A1A1A)),
                        ),
                        const SizedBox(height: 32),
                        Text(
                          'Whether you\'re preparing for interviews, presentations, or public speaking\nengagements, we offer a convenient way to build your speaking prowess and\nseize success with every word.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                              color: const Color(0xFF1A1A1A)),
                        ),
                        const SizedBox(height: 47),
                        SizedBox(
                          width: 301,
                          height: 48,
                          child: Material(
                            elevation: 10,
                            shadowColor: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: const Color(0xFFE55E48),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/login');
                              },
                              child: Text("Get Started For Free",
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 880,
                    left: 270,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text('01.',
                                style: GoogleFonts.inter(
                                  color: const Color(0xFF176BCE),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 78,
                                )),
                            const SizedBox(
                              height: 29,
                            ),
                            Text('Take Initial Speech\nAssessment',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: const Color(0xFF1A1A1A),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                )),
                            const SizedBox(
                              height: 28,
                            ),
                            Text(
                                'Answer simple questions for\nyour current speaking skills and\ntrack your progress.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.heebo(
                                  color: const Color(0xFF3D3D3D),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                )),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Column(
                          children: [
                            Text('02.',
                                style: GoogleFonts.inter(
                                  color: const Color(0xFF176BCE),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 78,
                                )),
                            const SizedBox(
                              height: 29,
                            ),
                            Text('Browse Through\nExercises Repository',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: const Color(0xFF1A1A1A),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                )),
                            const SizedBox(
                              height: 28,
                            ),
                            Text(
                                'From pronunciation to fluency\nand a wide range of more\ntailored exercises for you.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.heebo(
                                  color: const Color(0xFF3D3D3D),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                )),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Column(
                          children: [
                            Text('03.',
                                style: GoogleFonts.inter(
                                  color: const Color(0xFF176BCE),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 78,
                                )),
                            const SizedBox(
                              height: 29,
                            ),
                            Text('Practice The Skills You\nNeed Every Day',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: const Color(0xFF1A1A1A),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                )),
                            const SizedBox(
                              height: 28,
                            ),
                            Text(
                                'Enhance your skills by recording\nyour voice and applying it into an\nAI-driven learning experience.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.heebo(
                                  color: const Color(0xFF3D3D3D),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                )),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Column(
                          children: [
                            Text('04.',
                                style: GoogleFonts.inter(
                                  color: const Color(0xFF176BCE),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 78,
                                )),
                            const SizedBox(
                              height: 29,
                            ),
                            Text('Receive Instant\nFeedback',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: const Color(0xFF1A1A1A),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                )),
                            const SizedBox(
                              height: 28,
                            ),
                            Text(
                                'Get immediate feedback after\neach practice to easily spot\nareas for improvement.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.heebo(
                                  color: const Color(0xFF3D3D3D),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 1434,
                    left: 250,
                    child: Row(
                      children: [
                        Container(
                          height: 475,
                          width: 475,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/landingPage/Learn.png')),
                              color: Color(0xFFD9D9D9)),
                        ),
                        const SizedBox(width: 66),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Learn By Doing',
                                style: GoogleFonts.inter(
                                  color: const Color(0xFF1A1A1A),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 48,
                                )),
                            const SizedBox(height: 25),
                            Text(
                                'Benefit from interactive practice exercises and\nflexible self-paced training programs for enhancing\nyour skills in the most efficient manner.',
                                style: GoogleFonts.inter(
                                  color: const Color(0xFF1A1A1A),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20,
                                )),
                            const SizedBox(height: 25),
                            Row(children: [
                              SizedBox(
                                width: 224,
                                height: 48,
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
                                    onPressed: () {},
                                    child: Text("Browse Exercises",
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFFFFFFFF),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        )),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 21),
                              Material(
                                elevation: 10,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                  width: 224,
                                  height: 48,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: const Color(0xFFFFFFFF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text("Learning Paths",
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFF176BCE),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        )),
                                  ),
                                ),
                              ),
                            ]),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 2043,
                    left: 250,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Consult With Experts\nFor Feedback',
                                style: GoogleFonts.inter(
                                  color: const Color(0xFF1A1A1A),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 48,
                                )),
                            const SizedBox(height: 25),
                            Text(
                                'Gain assistance from trusted experts who provide\nvaluable insights, detailed assessments, and\nrecommendations tailored to your specific needs.',
                                style: GoogleFonts.inter(
                                  color: const Color(0xFF1A1A1A),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20,
                                )),
                            const SizedBox(height: 25),
                            SizedBox(
                              width: 301,
                              height: 48,
                              child: Material(
                                elevation: 10,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: const Color(0xFFE55E48),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text("View our pricing",
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 66),
                        Container(
                          height: 526,
                          width: 520,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/landingPage/consult.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
              Stack(children: [
                Image.asset(
                  'assets/images/landingPage/LandingPage_orange.png',
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: 123,
                  left: 570,
                  child: Text('Read What Others\nHave To Say',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w800,
                          fontSize: 48)),
                ),
                Positioned(
                  top: 386,
                  left: 620,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                      child: Container(
                        height: 354,
                        width: 318,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(27),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 301,
                  left: 631,
                  child: Column(
                    children: [
                      Image.asset(
                          'assets/images/landingPage/Review_profiles.png'),
                      const SizedBox(height: 25),
                      Text('Jessica Sombrano',
                          style: GoogleFonts.inter(
                              color: const Color(0xFF262626),
                              fontWeight: FontWeight.w700,
                              fontSize: 22)),
                      const SizedBox(height: 25),
                      Text(
                          "\"It can evaluate my pronunciation\nand reveal my grammar mistakes\nand sometimes pronunciation\nmistakes for my speaking!\"",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.heebo(
                              color: const Color(0xFF262626),
                              fontWeight: FontWeight.normal,
                              fontSize: 20)),
                    ],
                  ),
                )
              ]),
              Container(
                width: double.infinity,
                height: 870,
                child: Stack(children: [
                  Positioned(
                    top: 169,
                    left: 190,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Ready To get started?',
                                style: GoogleFonts.inter(
                                  color: const Color(0xFF1A1A1A),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 40,
                                )),
                            const SizedBox(height: 6),
                            Text('We Got You.',
                                style: GoogleFonts.inter(
                                  color: const Color(0xFF1A1A1A),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 78,
                                )),
                            const SizedBox(height: 27),
                            SizedBox(
                              width: 357.44,
                              height: 57,
                              child: Material(
                                elevation: 10,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: const Color(0xFFFFFFFF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/login');
                                  },
                                  child: Text("Get Started For Free",
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFF176BCE),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 66),
                        Container(
                          height: 487,
                          width: 533,
                          decoration: BoxDecoration(
                              color: const Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(27)),
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/images/landingPage/smallContainer_Blue.png',
                              ),
                              Positioned(
                                top: 50,
                                left: 54,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('SpeakUp All Access',
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFFFFFFFF),
                                          fontWeight: FontWeight.w800,
                                          fontSize: 40,
                                        )),
                                    const SizedBox(height: 37),
                                    Text(
                                        'Subscribe now for unlimited learning,\nwhenever and wherever suits you.\n\nEarn digital certificates, learn at your own\npace, and get access to courses, learning\npaths, example videos, and much more.',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFFFFFFFF),
                                          fontWeight: FontWeight.normal,
                                          fontSize: 22,
                                        )),
                                    const SizedBox(height: 47),
                                    SizedBox(
                                      width: 301,
                                      height: 48,
                                      child: Material(
                                        elevation: 10,
                                        shadowColor:
                                            Colors.grey.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(10),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor:
                                                const Color(0xFFE55E48),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: Text(
                                              "Subscribe To All Accesss",
                                              style: GoogleFonts.inter(
                                                color: const Color(0xFFFFFFFF),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                              )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Stack(children: [
                Image.asset(
                  'assets/images/landingPage/BottomLandingPage_blue.png',
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: 74,
                  right: 84,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/icons/iconwithname.png'),
                          const SizedBox(
                            height: 24,
                          ),
                          Text(
                              'SpeakUp is a leading innovator in the\neducation technology sector, specializing\nin speech proficiency enhancement. We\nare dedicated to creating an impactful\ndifference in the lives of individuals who\nface speech difficulties. ',
                              style: GoogleFonts.heebo(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                              ))
                        ],
                      ),
                      const SizedBox(width: 83),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('SpeakUp',
                              style: GoogleFonts.inter(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              )),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                              'Home\n\nAbout Us\n\nExercises\n\nLearning Paths\n\nPricing',
                              style: GoogleFonts.heebo(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                              ))
                        ],
                      ),
                      const SizedBox(width: 83),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Resources',
                              style: GoogleFonts.inter(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              )),
                          const SizedBox(
                            height: 30,
                          ),
                          Text('Privacy Policy\n\nTerms and Conditions',
                              style: GoogleFonts.heebo(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                              ))
                        ],
                      ),
                      const SizedBox(width: 83),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Contact',
                              style: GoogleFonts.inter(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              )),
                          const SizedBox(
                            height: 30,
                          ),
                          Text('Email\n\nLinkedIn\n\nInstagram\n\nTwitter',
                              style: GoogleFonts.heebo(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                              ))
                        ],
                      ),
                      const SizedBox(width: 83),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Join our Newsletter',
                              style: GoogleFonts.inter(
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              )),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 48,
                            width: 258,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintText: 'Email Address',
                                  hintStyle: GoogleFonts.inter(
                                    color: const Color(0xFF1A1A1A),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14,
                                  )),
                            ),
                          ),
                          const SizedBox(height: 17),
                          SizedBox(
                            width: 258,
                            height: 48,
                            child: Material(
                              elevation: 10,
                              shadowColor: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: const Color(0xFFE55E48),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text("Get Started",
                                    style: GoogleFonts.inter(
                                      color: const Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types

