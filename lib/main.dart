import 'package:flutter/material.dart';
import 'package:projectbetweener/auth/login_view.dart';
import 'package:projectbetweener/auth/on_boarding.dart';
import 'package:projectbetweener/core/util/general_services.dart';
import 'package:projectbetweener/features/home/home_view.dart';
import 'package:projectbetweener/features/home/widgets/home_icons.dart';
import 'auth/register_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/profile/profile_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 800));
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Betweener App',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: GeneralServices().buildMaterialColor(Color(0xFFD4650F)),
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            scaffoldBackgroundColor: Colors.white,
          ),
          home: const ProfileView(),
          routes: {
            RegisterView.id: (context) => const RegisterView(),
            LoginView.id: (context) => const LoginView(),
            OnBoradingView.id: (context) => const OnBoradingView(),
            HomeView.id: (context) => const HomeView(),
            ProfileView.id :(context) => const ProfileView(),
          },
        );
      },
    );
  }
}
