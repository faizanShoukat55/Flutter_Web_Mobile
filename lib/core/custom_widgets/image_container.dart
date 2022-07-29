import 'package:flutter/cupertino.dart';

import '../assets/images.dart';


class ImageContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final double? radius;
  final String? assets; /// This is for  local Asset
  final String? url;/// This one is for Network Image,
  final BoxFit? fit;
  const ImageContainer({this.height, this.width, this.assets = ImagesPath.default_img,
    this.radius = 0,
    this.url,
    this.fit = BoxFit.contain,
  });
  @override
  Widget build(BuildContext context) {
    return
      url == null ?
      Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius!),
            image: DecorationImage(
              image: AssetImage(assets!),
              fit: fit,
            )
        ),
      ) : ClipRRect(
        borderRadius: BorderRadius.circular(radius!),
        child: FadeInImage(
          width: width,
          height: height,
          image: NetworkImage(url!),
          placeholder: AssetImage(assets!),
          fit: BoxFit.cover,
        ),
      );
  }
}