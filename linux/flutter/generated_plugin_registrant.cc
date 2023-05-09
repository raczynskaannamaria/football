//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <biometric_storage/biometric_storage_plugin.h>
#include <desktop_webview_auth/desktop_webview_auth_plugin.h>
#include <emoji_picker_flutter/emoji_picker_flutter_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) biometric_storage_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "BiometricStoragePlugin");
  biometric_storage_plugin_register_with_registrar(biometric_storage_registrar);
  g_autoptr(FlPluginRegistrar) desktop_webview_auth_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "DesktopWebviewAuthPlugin");
  desktop_webview_auth_plugin_register_with_registrar(desktop_webview_auth_registrar);
  g_autoptr(FlPluginRegistrar) emoji_picker_flutter_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "EmojiPickerFlutterPlugin");
  emoji_picker_flutter_plugin_register_with_registrar(emoji_picker_flutter_registrar);
}
