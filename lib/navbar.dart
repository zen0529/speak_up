import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class navbar extends StatelessWidget {
  const navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Expanded(
              flex: 1,
              child: Container(
                child: ListView(
                  children: [
                    ListTile(
                      title: Text('Dashboard'),
                      leading:
                          Image.asset('assets/images/dashboard/dashboard.png'),
                    )
                  ],
                ),
              ))

          //     TextButton(
          //         onPressed: () {},
          //         child: Row(
          //           children: [

          //             const SizedBox(
          //               width: 11.96,
          //             ),

          //                 style: GoogleFonts.inter(
          //                   color: const Color(0xFF747C85),
          //                   fontWeight: FontWeight.normal,
          //                   fontSize: 16,
          //                 )),
          //           ],
          //         )),
          //     const SizedBox(
          //       height: 38,
          //     ),
          //     TextButton(
          //         onPressed: () {},
          //         child: Row(
          //           children: [
          //             Image.asset('assets/images/dashboard/headphone.png'),
          //             const SizedBox(
          //               width: 11.96,
          //             ),
          //             Text('Assessment',
          //                 style: GoogleFonts.inter(
          //                   color: const Color(0xFF747C85),
          //                   fontWeight: FontWeight.normal,
          //                   fontSize: 16,
          //                 )),
          //           ],
          //         )),
          //     const SizedBox(
          //       height: 38,
          //     ),
          //     TextButton(
          //         onPressed: () {},
          //         child: Row(
          //           children: [
          //             Image.asset('assets/images/dashboard/learningpath.png'),
          //             const SizedBox(
          //               width: 11.96,
          //             ),
          //             Text('Learning Paths',
          //                 style: GoogleFonts.inter(
          //                   color: const Color(0xFF747C85),
          //                   fontWeight: FontWeight.normal,
          //                   fontSize: 16,
          //                 )),
          //           ],
          //         )),
          //     const SizedBox(
          //       height: 38,
          //     ),
          //     TextButton(
          //         onPressed: () {},
          //         child: Row(
          //           children: [
          //             Image.asset('assets/images/dashboard/exercises.png'),
          //             const SizedBox(
          //               width: 11.96,
          //             ),
          //             Text('Exercises/Activities',
          //                 style: GoogleFonts.inter(
          //                   color: const Color(0xFF747C85),
          //                   fontWeight: FontWeight.normal,
          //                   fontSize: 16,
          //                 )),
          //           ],
          //         )),
          //     const SizedBox(
          //       height: 38,
          //     ),
          //     TextButton(
          //         onPressed: () {},
          //         child: Row(
          //           children: [
          //             Image.asset('assets/images/dashboard/price.png'),
          //             const SizedBox(
          //               width: 11.96,
          //             ),
          //             Text('Price',
          //                 style: GoogleFonts.inter(
          //                   color: const Color(0xFF747C85),
          //                   fontWeight: FontWeight.normal,
          //                   fontSize: 16,
          //                 )),
          //           ],
          //         )),
          //     const SizedBox(
          //       height: 38,
          //     ),
          //     TextButton(
          //         onPressed: () {},
          //         child: Row(
          //           children: [
          //             Image.asset('assets/images/dashboard/settings.png'),
          //             const SizedBox(
          //               width: 11.96,
          //             ),
          //             Text('Settings',
          //                 style: GoogleFonts.inter(
          //                   color: const Color(0xFF747C85),
          //                   fontWeight: FontWeight.normal,
          //                   fontSize: 16,
          //                 )),
          //           ],
          //         )),
          //     const SizedBox(
          //       height: 351,
          //     ),
          //     TextButton(
          //         onPressed: () {},
          //         child: Row(
          //           children: [
          //             Image.asset('assets/images/dashboard/logout.png'),
          //             const SizedBox(
          //               width: 11.96,
          //             ),
          //             Text('Logout',
          //                 style: GoogleFonts.inter(
          //                   color: const Color(0xFF000000),
          //                   fontWeight: FontWeight.normal,
          //                   fontSize: 16,
          //                 )),
          //           ],
          //         )),
          //   ],
          // ),
        ]));
  }
}
