import 'package:flutter/services.dart';

class SecurityService {
  static const platform = MethodChannel('com.elly_av.app/security');

  static Future<void> secureScreen() async {
    try {
      await platform.invokeMethod('setSecureFlag');
    } on PlatformException catch (e) {
      print("Failed to set secure flag: '${e.message}'.");
    }
  }
}
