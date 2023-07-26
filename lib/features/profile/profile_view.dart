import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projectbetweener/features/profile/widgets/custom_floating_botton.dart';
import 'package:projectbetweener/features/profile/widgets/custom_profile_container_widget.dart';
import 'package:projectbetweener/features/profile/widgets/custom_profile_link_widget.dart';

import '../auth/widgets/custom_text_widget.dart';
import '../auth/widgets/screen_container.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);
  static String id = 'profileView';

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      customFloatButton: CustomFloatingButton(
        onPressed: () {},
      ),
      body: [
        CustomText(
          title: "Profile",
          alignValue: Alignment.center,
          fontSize: 24.sp,
          color: Colors.black,
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
      ],
    );
  }
}
