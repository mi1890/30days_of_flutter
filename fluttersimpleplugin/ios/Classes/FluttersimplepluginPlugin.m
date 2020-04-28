#import "FluttersimplepluginPlugin.h"
#if __has_include(<fluttersimpleplugin/fluttersimpleplugin-Swift.h>)
#import <fluttersimpleplugin/fluttersimpleplugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fluttersimpleplugin-Swift.h"
#endif

@implementation FluttersimplepluginPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFluttersimplepluginPlugin registerWithRegistrar:registrar];
}
@end
