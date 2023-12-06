import 'dart:convert';

import 'package:flutter/services.dart';


Uint8List decodeBase64Image(String img) {
  try {
    final Uint8List imageBytes = base64Decode(img);
    return imageBytes;
  } catch (e) {
    return base64Decode("imageUrlForDummy");
  }
}
