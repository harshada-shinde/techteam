package io.flutter.plugins;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import io.flutter.Log;

import io.flutter.embedding.engine.FlutterEngine;

/**
 * Generated file. Do not edit.
 * This file is generated by the Flutter tool based on the
 * plugins that support the Android platform.
 */
@Keep
public final class GeneratedPluginRegistrant {
  private static final String TAG = "GeneratedPluginRegistrant";
  public static void registerWith(@NonNull FlutterEngine flutterEngine) {
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.connectivity.ConnectivityPlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin connectivity, io.flutter.plugins.connectivity.ConnectivityPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new ru.innim.flutter_login_facebook.FlutterLoginFacebookPlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin flutter_login_facebook, ru.innim.flutter_login_facebook.FlutterLoginFacebookPlugin", e);
    }
    try {
      flutterEngine.getPlugins().add(new io.flutter.plugins.googlesignin.GoogleSignInPlugin());
    } catch(Exception e) {
      Log.e(TAG, "Error registering plugin google_sign_in_android, io.flutter.plugins.googlesignin.GoogleSignInPlugin", e);
    }
  }
}