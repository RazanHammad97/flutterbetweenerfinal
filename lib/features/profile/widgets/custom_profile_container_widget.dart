import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projectbetweener/auth/widgets/custom_image_widget.dart';
import 'package:projectbetweener/auth/widgets/custom_text_widget.dart';

import 'follower_container.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 283.w,
        height: 126.h,
        decoration: BoxDecoration(
          color: Color(0xff21274c),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      Positioned(
        top: -90,
        left: -75,
        child: Container(
          margin: EdgeInsets.all(100.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Row(
            children: [
              CustomImage(
                "assets/images/person.png",
                80,
                80,
              ),
              Column(
                children: [
                  CustomText(
                    title: "John Doe",
                    topPadding: 0,
                    leftPadding: 8,
                    alignValue: Alignment.topCenter,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                  CustomText(
                    title: "example@gmail.com",
                    topPadding: 2,
                    leftPadding: 8,
                    color: Colors.white,
                  ),
                  CustomText(
                    title: "+97000000",
                    topPadding: 2,
                    leftPadding: 8,
                    color: Colors.white,
                  ),
                  Row(
                    children: [
                      FollowerContainer(
                        title: "follower 404",
                      ),
                      FollowerContainer(
                        title: "following 404",
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}


