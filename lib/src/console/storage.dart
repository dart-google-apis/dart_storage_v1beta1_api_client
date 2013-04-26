part of storage_v1beta1_api_console;

/** Client to access the storage v1beta1 API */
/** Lets you store and retrieve potentially-large, immutable data objects. */
class Storage extends ConsoleClient {

  BucketAccessControlsResource_ _bucketAccessControls;
  BucketAccessControlsResource_ get bucketAccessControls => _bucketAccessControls;
  BucketsResource_ _buckets;
  BucketsResource_ get buckets => _buckets;
  ObjectAccessControlsResource_ _objectAccessControls;
  ObjectAccessControlsResource_ get objectAccessControls => _objectAccessControls;
  ObjectsResource_ _objects;
  ObjectsResource_ get objects => _objects;

  /** OAuth Scope2: Manage your data and permissions in Google Cloud Storage */
  static const core.String DEVSTORAGE_FULL_CONTROL_SCOPE = "https://www.googleapis.com/auth/devstorage.full_control";

  /** OAuth Scope2: View your data in Google Cloud Storage */
  static const core.String DEVSTORAGE_READ_ONLY_SCOPE = "https://www.googleapis.com/auth/devstorage.read_only";

  /** OAuth Scope2: Manage your data in Google Cloud Storage */
  static const core.String DEVSTORAGE_READ_WRITE_SCOPE = "https://www.googleapis.com/auth/devstorage.read_write";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  core.String get alt => params["alt"];
  set alt(core.String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  core.String get fields => params["fields"];
  set fields(core.String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  core.String get key => params["key"];
  set key(core.String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  core.String get oauth_token => params["oauth_token"];
  set oauth_token(core.String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  core.bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(core.bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  core.String get quotaUser => params["quotaUser"];
  set quotaUser(core.String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  core.String get userIp => params["userIp"];
  set userIp(core.String value) => params["userIp"] = value;

  Storage([oauth2.OAuth2Console auth]) : super(auth) {
    basePath = "/storage/v1beta1/";
    rootUrl = "https://www.googleapis.com:443/";
    _bucketAccessControls = new BucketAccessControlsResource_(this);
    _buckets = new BucketsResource_(this);
    _objectAccessControls = new ObjectAccessControlsResource_(this);
    _objects = new ObjectsResource_(this);
  }
}
