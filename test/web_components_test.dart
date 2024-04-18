import 'package:flutter_test/flutter_test.dart';
import 'package:web_components/web_components.dart';
import 'package:web_components/web_components_platform_interface.dart';
import 'package:web_components/web_components_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockWebComponentsPlatform
    with MockPlatformInterfaceMixin
    implements WebComponentsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final WebComponentsPlatform initialPlatform = WebComponentsPlatform.instance;

  // test('$MethodChannelWebComponents is the default instance', () {
  //   expect(initialPlatform, isInstanceOf<MethodChannelWebComponents>());
  // });
  //
  // test('getPlatformVersion', () async {
  //   WebComponents webComponentsPlugin = WebComponents();
  //   MockWebComponentsPlatform fakePlatform = MockWebComponentsPlatform();
  //   WebComponentsPlatform.instance = fakePlatform;
  //
  //   expect(await webComponentsPlugin.getPlatformVersion(), '42');
  // });
}
