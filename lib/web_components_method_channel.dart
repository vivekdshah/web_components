import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'web_components_platform_interface.dart';

/// An implementation of [WebComponentsPlatform] that uses method channels.
class MethodChannelWebComponents extends WebComponentsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('web_components');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
