library storage_v1beta1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_storage_v1beta1_api/src/cloud_api_console.dart';

import "package:google_storage_v1beta1_api/storage_v1beta1_api_client.dart";

/** Lets you store and retrieve potentially-large, immutable data objects. */
class Storage extends Client with ConsoleClient {

  /** OAuth Scope2: Manage your data and permissions in Google Cloud Storage */
  static const String DEVSTORAGE_FULL_CONTROL_SCOPE = "https://www.googleapis.com/auth/devstorage.full_control";

  /** OAuth Scope2: View your data in Google Cloud Storage */
  static const String DEVSTORAGE_READ_ONLY_SCOPE = "https://www.googleapis.com/auth/devstorage.read_only";

  /** OAuth Scope2: Manage your data in Google Cloud Storage */
  static const String DEVSTORAGE_READ_WRITE_SCOPE = "https://www.googleapis.com/auth/devstorage.read_write";

  final oauth2.OAuth2Console auth;

  Storage([oauth2.OAuth2Console this.auth]);
}
