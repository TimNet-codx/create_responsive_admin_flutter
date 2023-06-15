import 'package:create_responsive_admin_flutter/constants/constants.dart';
import 'package:create_responsive_admin_flutter/constants/responsive.dart';
import 'package:create_responsive_admin_flutter/screen/components/analytic_cards.dart';
import 'package:create_responsive_admin_flutter/screen/components/custom_appbar.dart';
import 'package:create_responsive_admin_flutter/screen/components/discussions.dart';
import 'package:create_responsive_admin_flutter/screen/components/top_referals.dart';
import 'package:create_responsive_admin_flutter/screen/components/users.dart';
import 'package:create_responsive_admin_flutter/screen/components/users_by_device.dart';
import 'package:create_responsive_admin_flutter/screen/components/viewers.dart';
import 'package:flutter/material.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(appPadding),
            child: Column(
              children: [
                const CustomAppbar(),
                const SizedBox(height: appPadding,),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start ,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              const AnalyticCards(),
                              const SizedBox(
                                height: appPadding,
                              ),
                              const Users(),
                              if(Responsive.isMobile(context))
                                const SizedBox(height: appPadding,),
                              if(Responsive.isMobile(context))
                                const Discussions(),
                            ],
                          ),
                        ),
                        if(!Responsive.isMobile(context))
                          const SizedBox(width: appPadding,),
                        if(!Responsive.isMobile(context))
                          const Expanded(
                            flex: 2,
                            child: Discussions(),
                          )
                      ],
                    ),
                    const SizedBox(height: appPadding,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              const SizedBox(height: appPadding,),
                              Row(
                                children:[
                                  if(!Responsive.isMobile(context))
                                  Expanded(
                                    child: TopReferals(),
                                    flex: 2,
                                  ),
                                  if(!Responsive.isMobile(context))
                                    SizedBox(width: appPadding,),
                                  Expanded(
                                      flex: 3,
                                      child: Viewers()
                                  ),
                                ],
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),  
                              const SizedBox(
                                height: appPadding,
                              ),
                              if(Responsive.isMobile(context))
                                const SizedBox(height: appPadding,),
                              if(Responsive.isMobile(context))
                                const TopReferals(),
                              if(Responsive.isMobile(context))
                                const SizedBox(height: appPadding,),
                              if(Responsive.isMobile(context))
                                const UsersByDevice(),
                            ],
                          ),
                        ),
                        if(!Responsive.isMobile(context))
                          const SizedBox(width: appPadding,),
                        if(!Responsive.isMobile(context))
                          const Expanded(
                            flex: 2,
                            child: UsersByDevice(),
                          )
                      ],
                    ),
                  ],
                )




              ],
            ),
          ),
    );
  }
}

