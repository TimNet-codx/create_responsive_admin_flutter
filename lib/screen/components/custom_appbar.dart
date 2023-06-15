import 'package:create_responsive_admin_flutter/constants/constants.dart';
import 'package:create_responsive_admin_flutter/constants/responsive.dart';
import 'package:create_responsive_admin_flutter/controllers/controller.dart';
import 'package:create_responsive_admin_flutter/screen/components/profile_info.dart';
import 'package:create_responsive_admin_flutter/screen/components/search_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(!Responsive.isDesktop(context))
          IconButton(
              onPressed: context.read<Controller>().controlMenu,
              icon: Icon(Icons.menu, color: textColor.withOpacity(0.5),)),
        const Expanded(child: SearchField()),
        const ProfileInfo()
      ],
    );
  }
}
