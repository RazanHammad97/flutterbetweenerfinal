import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projectbetweener/auth/widgets/custom_image_widget.dart';
import 'package:projectbetweener/auth/widgets/custom_text_widget.dart';

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

class FollowerContainer extends StatelessWidget {
  const FollowerContainer({required this.title, Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: Container(
        width: 80.w,
        height: 17.h,
        decoration: BoxDecoration(
          color: Color(0xFFD4650F),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(fontSize: 12.sp),
          ),
        ),
      ),
    );
  }
}
