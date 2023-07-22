import 'package:flutter/material.dart';
import 'package:projectbetweener/auth/widgets/custom_text_widget.dart';
import 'package:projectbetweener/auth/widgets/screen_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projectbetweener/features/profile/widgets/custom_profile_container_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);
  static String id = 'profileView';

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      body: [
        CustomText(
          title: "Profile",
          alignValue: Alignment.center,
          fontSize: 24.sp,
          color: Colors.black,
        ),
        ProfileContainer(),
      ],
    );
  }
}
