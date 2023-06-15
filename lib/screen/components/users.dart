import 'package:create_responsive_admin_flutter/constants/constants.dart';
import 'package:create_responsive_admin_flutter/screen/components/bar_chart_users.dart';
import 'package:flutter/material.dart';

class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 400,
      width: double.infinity,
      padding: const EdgeInsets.all(appPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
       Text(
              "Users",
               style: TextStyle(
                 fontSize: 15,
                 fontWeight: FontWeight.w700,
                 color: textColor
               ),
          ),
          Expanded(
              child: BarchartUsers()
          )
        ],

        ),
    );
  }
}
