import 'package:create_responsive_admin_flutter/constants/constants.dart';
import 'package:create_responsive_admin_flutter/constants/responsive.dart';
import 'package:create_responsive_admin_flutter/data/data.dart';
import 'package:create_responsive_admin_flutter/screen/components/analytic_info_card.dart';
import 'package:flutter/material.dart';

class AnalyticCards extends StatelessWidget {
  const AnalyticCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
     // child: AnalyticInfoCardGridView(),
      child: Responsive(
          mobile: AnalyticInfoCardGridView(
            crossAxisCount: size.width < 658 ? 2 : 4,
            childAspectRatio: size.width < 658 ? 2 : 1.5,
          ),
          tablet: AnalyticInfoCardGridView(),
          desktop: AnalyticInfoCardGridView(
            childAspectRatio: size.width < 1400 ? 1.5 : 2.1,
          )),
    );
  }
}

class AnalyticInfoCardGridView extends StatelessWidget {
  const AnalyticInfoCardGridView({Key? key, this.crossAxisCount = 4, this.childAspectRatio = 1.4}) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: analyticData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: appPadding,
            mainAxisSpacing: appPadding,
            childAspectRatio: childAspectRatio,
        ),
        itemBuilder: (context,index) => AnalyticInfoCard(info: analyticData[index]),
    );
  }
}
