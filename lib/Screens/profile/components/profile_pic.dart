import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 115,
      height: 115,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/Profile Image.png"),
          ),
          Positioned(
            bottom: 0,
            right: -12,
            child: SizedBox(
              height: 46,
              width: 46,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF5F6F9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(color: Colors.white)
                  ),
                  padding: EdgeInsets.zero,
                ),
                onPressed: () {},
                child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}