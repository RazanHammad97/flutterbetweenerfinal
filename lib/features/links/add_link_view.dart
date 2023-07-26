import 'package:flutter/material.dart';
import 'package:projectbetweener/features/auth/widgets/custom_button.dart';
import 'package:projectbetweener/features/auth/widgets/custom_image_widget.dart';
import 'package:projectbetweener/features/auth/widgets/custom_text_widget.dart';
import 'package:projectbetweener/features/auth/widgets/input_text_widget.dart';
import 'package:projectbetweener/features/auth/widgets/screen_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddLinkView extends StatelessWidget {
  const AddLinkView({Key? key}) : super(key: key);
  static String id = "/add-link";

  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = TextEditingController();
    TextEditingController _linkController = TextEditingController();

    return ScreenContainer(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
          ),
          title: CustomText(
            title: 'Add Link',
            color: Colors.black,
            fontSize: 25.sp,
          ),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: [
          InputText(_nameController, "Snapshat", "Title"),
          InputText(_linkController, "https://snapshat.com", "Link"),
          CustomButton(
            "Add",
            onPressed: () {},
          )
        ]);
  }
}
