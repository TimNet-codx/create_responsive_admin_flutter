import 'package:create_responsive_admin_flutter/constants/constants.dart';
import 'package:create_responsive_admin_flutter/constants/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(appPadding),
          child: Stack(
            children: [
              SvgPicture.asset(
                "assets/icons/Bell.svg",
                height: 25,
                color: textColor.withOpacity(0.8),
              ),
              Positioned(
                right: 0,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: const  BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                    ),
                  )
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: appPadding),
          padding: const EdgeInsets.symmetric(
            horizontal: appPadding,
            vertical: appPadding / 2
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/images/photo3.jpg",
                  height: 38,
                  width: 38,
                  fit: BoxFit.cover,
                ),
              ),
              if(!Responsive.isMobile(context))
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: appPadding / 2),
                child: Text(
                    "Tim.Net",
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              )
            ],
          ),
        )

      ],
    );
  }
}
