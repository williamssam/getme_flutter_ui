import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  final List<String> categories = [
    'All',
    'E-commerce',
    'Photoshoot',
    'Event',
    '2021 Models',
    'Models'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 30),
      child: SizedBox(
          height: 38,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: categories.map<Widget>((category) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                  margin: const EdgeInsets.only(left: 12),
                  // height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: category == 'All'
                          ? Colors.black
                          : Colors.grey.shade300),
                  child: Text(
                    category,
                    style: GoogleFonts.lato(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: category == 'All' ? Colors.white : Colors.black),
                    textAlign: TextAlign.center,
                  ),
                );
              }).toList())),
    );
  }
}
