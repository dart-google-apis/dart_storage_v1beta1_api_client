library storage_v1beta1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_storage_v1beta1_api/src/cloud_api_browser.dart';
import "package:google_storage_v1beta1_api/storage_v1beta1_api_client.dart";

/** Lets you store and retrieve potentially-large, immutable data objects. */
class Storage extends Client with BrowserClient {

  /** OAuth Scope2: Manage your data and permissions in Google Cloud Storage */
  static const String DEVSTORAGE_FULL_CONTROL_SCOPE = "https://www.googleapis.com/auth/devstorage.full_control";

  /** OAuth Scope2: View your data in Google Cloud Storage */
  static const String DEVSTORAGE_READ_ONLY_SCOPE = "https://www.googleapis.com/auth/devstorage.read_only";

  /** OAuth Scope2: Manage your data in Google Cloud Storage */
  static const String DEVSTORAGE_READ_WRITE_SCOPE = "https://www.googleapis.com/auth/devstorage.read_write";

  final oauth.OAuth2 auth;

  Storage([oauth.OAuth2 this.auth]);
}
