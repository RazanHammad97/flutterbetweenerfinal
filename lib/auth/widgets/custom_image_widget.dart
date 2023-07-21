import 'package:flutter/cupertino.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(this.imagePath,this.width,this.height,{this.color,Key? key}) : super(key: key);
  final String imagePath;
  final double width;
  final double height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:7,bottom: 47.0),
      child: SizedBox(
        width: width,
        height: height,
        child: Image(image: AssetImage(imagePath),color: color,),
      ),
    );
  }
}
