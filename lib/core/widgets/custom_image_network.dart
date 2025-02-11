import 'package:flutter/material.dart';

chickImageNetwork({
  required String url,
  double? width,
}) {
  return Image.network(
    url,
    filterQuality: FilterQuality.high,
    width: width,
    fit: BoxFit.cover,
    loadingBuilder:
        (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
      if (loadingProgress == null) {
        return child; // Return the child widget as it is if there is no loading progress
      }

      if (loadingProgress.cumulativeBytesLoaded ==
          loadingProgress.expectedTotalBytes) {
        // The image has been fully loaded
        return child;
      } else {
        // Show a loading indicator while the image is being loaded
        return Image.asset('assets/images/arabsstock.png');
      }
    },
    errorBuilder:
        (BuildContext context, Object exception, StackTrace? stackTrace) {
      // Handle the error when the image fails to load
      return Image.asset('assets/images/arabsstock.png');
    },
  );
}
