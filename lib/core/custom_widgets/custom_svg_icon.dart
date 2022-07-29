import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class CustomSVGImage extends StatelessWidget {
  final String path;
  final double? width;
  final double? height;
  const CustomSVGImage({Key? key, required this.path, this.width=20, this.height=20}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      height: height,
      width: width,
      path,
      semanticsLabel: 'Search Icon',
    );
  }
}
