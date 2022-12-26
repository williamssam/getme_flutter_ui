import 'package:flutter/material.dart';
import 'package:getme_ui/views/dashboard/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1568819317551-31051b37f69f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                ),
                fit: BoxFit.cover)),
      ),
      Container(
        constraints: const BoxConstraints.expand(),
        color: const Color(0xFF1A1A1A).withOpacity(0.5),
      ),
      Positioned(
        top: 53,
        left: 27,
        child: Row(
          children: [
            RotatedBox(
              quarterTurns: 1,
              child: RichText(
                text: TextSpan(
                    text: 'Getme.'.toUpperCase(),
                    style: GoogleFonts.oswald(
                        fontSize: 58.78,
                        letterSpacing: 0.65,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none),
                    children: [
                      TextSpan(
                          text: 'com'.toUpperCase(),
                          style: GoogleFonts.oswald(
                            color: const Color(0xFFFFC700),
                            fontSize: 20,
                            letterSpacing: 0.65,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
              ),
            )
          ],
        ),
      ),
      Positioned(
        bottom: 0,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('From'.toUpperCase(),
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                          fontSize: 8)),
                  Text('Zognest'.toUpperCase(),
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                          height: 1.5,
                          fontSize: 12)),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Dashboard()),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: Text(
                  'Go to dashboard',
                  style: GoogleFonts.lato(
                      color: Colors.grey.shade700, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 29),
                child: Text(
                  '© 2021-2022 Getme. All Rights Reserved.',
                  style: GoogleFonts.lato(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade400,
                      decoration: TextDecoration.none),
                ),
              )
            ],
          ),
        ),
      )
    ]);
  }
}
