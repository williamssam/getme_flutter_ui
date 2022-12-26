import 'package:flutter/material.dart';
import 'package:getme_ui/reusable/header_right_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 394,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1581338834647-b0fb40704e21?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'))),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              // width: double.infitnity
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFF0E1216).withOpacity(0),
                    const Color(0xFF0E1216).withOpacity(0.6),
                    // Colors.red,
                  ],
                ),
              ),
            ),
          ),
          //  MODEL DETAILS
          Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Andrea Chidu',
                    style: GoogleFonts.lato(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    )),
                const SizedBox(
                  height: 7,
                ),
                Text('July 16, 1995',
                    style: GoogleFonts.lato(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ))
              ],
            ),
          ),

          Positioned(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 70, right: 25, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hello',
                          style: GoogleFonts.lato(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Colors.white
                              // height: 20
                              )),
                      Text('Atikh Bana',
                          style: GoogleFonts.lato(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                              // height: 20
                              )),
                    ],
                  ),
                  const HeaderRightIcons()
                ],
              ),
            ),
          ),

          Positioned(
            left: 15,
            top: 70,
            child: RotatedBox(
              quarterTurns: -1,
              child: Text('Trending Model',
                  style: GoogleFonts.lato(
                      fontSize: 29,
                      fontWeight: FontWeight.w400,
                      color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
