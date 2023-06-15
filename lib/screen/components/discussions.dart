import 'package:create_responsive_admin_flutter/constants/constants.dart';
import 'package:create_responsive_admin_flutter/data/data.dart';
import 'package:create_responsive_admin_flutter/screen/components/discussion_info_detail.dart';
import 'package:flutter/material.dart';

class Discussions extends StatelessWidget {
  const Discussions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      padding: const EdgeInsets.all(appPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Discussions",
                 style: TextStyle(
                   color: textColor,
                   fontWeight: FontWeight.w700,
                   fontSize: 15,
                 ),
              ),
              Text(
                "view All",
                style: TextStyle(
                  color: textColor.withOpacity(0.5),
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              )
            ],
          ),
          const SizedBox(
            height: appPadding,
          ),
          Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: discussionData.length,
                  itemBuilder: (context, index) => DiscussionsInfoDetail(info: discussionData[index],)
              )
          )
        ],
      ),
    );
  }
}
