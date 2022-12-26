import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getme_ui/reusable/header_right_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class ModelDetails extends StatelessWidget {
  const ModelDetails({super.key, required this.image, required this.name});

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            image,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: SvgPicture.asset('assets/arrow-left.svg'),
                  onTap: () => Navigator.pop(context),
                ),
                const HeaderRightIcons(
                  color: Colors.black,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                name,
                style: GoogleFonts.oswald(
                    fontSize: 35,
                    // letterSpacing: 0.5,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
