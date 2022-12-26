import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderRightIcons extends StatelessWidget {
  const HeaderRightIcons({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/message_icon.svg',
          color: color ?? Colors.white,
        ),
        SvgPicture.asset(
          'assets/search_icon.svg',
          color: color ?? Colors.white,
        ),
      ],
    );
  }
}
