import 'package:flutter/material.dart';
import 'package:projectbetweener/features/auth/widgets/custom_text_widget.dart';
import 'package:projectbetweener/features/auth/widgets/screen_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../profile/widgets/custom_profile_container_widget.dart';
import '../profile/widgets/custom_profile_link_widget.dart';

class FriendProfileView extends StatelessWidget {
  const FriendProfileView({Key? key}) : super(key: key);
  static String id = "/profile-friend";

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(body: [
      CustomText(
        title: "Razan Hammad",
        color: Colors.black,
        fontSize: 25.sp,
      ),
      ProfileContainer(),
      Column(
        children: [
          ProfileLink(
            color: Color(0xFFD99696),
            socialTitle: "Facebook".toUpperCase(),
            socialLinkTitle: "facebook/razanhammad",
          ),
          ProfileLink(
            color: Color(0xFFD9BE96),
            socialTitle: "Facebook".toUpperCase(),
            socialLinkTitle: "facebook/razanhammad",
          ),
          ProfileLink(
            color: Color(0xFFD99696),
            socialTitle: "Facebook".toUpperCase(),
            socialLinkTitle: "facebook/razanhammad",
          ),
          ProfileLink(
            color: Color(0xFFD9BE96),
            socialTitle: "Facebook".toUpperCase(),
            socialLinkTitle: "facebook/razanhammad",
          )
        ],
      ),


    ]);
  }
}
