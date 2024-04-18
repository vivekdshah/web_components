import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'web_components_method_channel.dart';

abstract class WebComponentsPlatform extends PlatformInterface {
  /// Constructs a WebComponentsPlatform.
  WebComponentsPlatform() : super(token: _token);

  static final Object _token = Object();

  static WebComponentsPlatform _instance = MethodChannelWebComponents();

  /// The default instance of [WebComponentsPlatform] to use.
  ///
  /// Defaults to [MethodChannelWebComponents].
  static WebComponentsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WebComponentsPlatform] when
  /// they register themselves.
  static set instance(WebComponentsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
