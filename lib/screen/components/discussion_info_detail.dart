import 'package:create_responsive_admin_flutter/constants/constants.dart';
import 'package:create_responsive_admin_flutter/models/discussions_info_model.dart';
import 'package:flutter/material.dart';

class DiscussionsInfoDetail extends StatelessWidget {
  const DiscussionsInfoDetail({Key? key, required this.info}) : super(key: key);

  final DiscussionInfoModel info;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: appPadding),
      padding: const EdgeInsets.all(appPadding /2),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
                info.imageSrc!,
                height: 38,
                width: 38,
                fit: BoxFit.cover
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: appPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    info.name!,
                    style: const TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                    info.date!,
                    style: TextStyle(
                        color: textColor.withOpacity(0.5),
                        fontSize: 13,
                    ),
                  )
                ],
              ),
            ),
          ),
          Icon(
            Icons.more_vert_rounded,
            color: textColor.withOpacity(0.5),
            size: 18,
          )
        ],
      ),
    );
  }
}
