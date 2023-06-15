import 'package:create_responsive_admin_flutter/constants/constants.dart';
import 'package:create_responsive_admin_flutter/controllers/controller.dart';
import 'package:create_responsive_admin_flutter/screen/components/dashboard_content.dart';
import 'package:create_responsive_admin_flutter/screen/components/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:create_responsive_admin_flutter/constants/responsive.dart';

import 'components/drawer_menu.dart';
import 'package:provider/provider.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      drawer: const DrawerMenu(),
      key: context.read<Controller>().scaffoldKey,
      body: SafeArea(
        child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              if(Responsive.isDesktop(context))
                const Expanded(child: DrawerMenu()),
            const Expanded(
              flex: 5,
                child: DashboardContent(

            )),
          ],
        ),
      ),
    );
  }
}
