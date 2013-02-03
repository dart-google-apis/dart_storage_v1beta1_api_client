part of storage_v1beta1_api_client;

class BucketAccessControlsResource extends Resource {

  BucketAccessControlsResource(Client client) : super(client) {
  }

  /**
   * Deletes the ACL entry for the specified entity on the specified bucket.
   *
   * [bucket] - Name of a bucket.
   *
   * [entity] - The entity holding the permission. Can be user-userId, group-groupId, allUsers, or allAuthenticatedUsers.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String bucket, String entity, {Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}/acl/{entity}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns the ACL entry for the specified entity on the specified bucket.
   *
   * [bucket] - Name of a bucket.
   *
   * [entity] - The entity holding the permission. Can be user-userId, group-groupId, allUsers, or allAuthenticatedUsers.
   *
   * [optParams] - Additional query parameters
   */
  Future<BucketAccessControl> get(String bucket, String entity, {Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}/acl/{entity}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new BucketAccessControl.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a new ACL entry on the specified bucket.
   *
   * [request] - BucketAccessControl to send in this request
   *
   * [bucket] - Name of a bucket.
   *
   * [optParams] - Additional query parameters
   */
  Future<BucketAccessControl> insert(BucketAccessControl request, String bucket, {Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}/acl";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new BucketAccessControl.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves ACL entries on the specified bucket.
   *
   * [bucket] - Name of a bucket.
   *
   * [optParams] - Additional query parameters
   */
  Future<BucketAccessControls> list(String bucket, {Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}/acl";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new BucketAccessControls.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates an ACL entry on the specified bucket. This method supports patch semantics.
   *
   * [request] - BucketAccessControl to send in this request
   *
   * [bucket] - Name of a bucket.
   *
   * [entity] - The entity holding the permission. Can be user-userId, group-groupId, allUsers, or allAuthenticatedUsers.
   *
   * [optParams] - Additional query parameters
   */
  Future<BucketAccessControl> patch(BucketAccessControl request, String bucket, String entity, {Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}/acl/{entity}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new BucketAccessControl.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates an ACL entry on the specified bucket.
   *
   * [request] - BucketAccessControl to send in this request
   *
   * [bucket] - Name of a bucket.
   *
   * [entity] - The entity holding the permission. Can be user-userId, group-groupId, allUsers, or allAuthenticatedUsers.
   *
   * [optParams] - Additional query parameters
   */
  Future<BucketAccessControl> update(BucketAccessControl request, String bucket, String entity, {Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}/acl/{entity}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new BucketAccessControl.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class BucketsResource extends Resource {

  BucketsResource(Client client) : super(client) {
  }

  /**
   * Deletes an empty bucket.
   *
   * [bucket] - Name of a bucket.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String bucket, {Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns metadata for the specified bucket.
   *
   * [bucket] - Name of a bucket.
   *
   * [projection] - Set of properties to return. Defaults to no_acl.
   *   Allowed values:
   *     full - Include all properties.
   *     no_acl - Omit acl and defaultObjectAcl properties.
   *
   * [optParams] - Additional query parameters
   */
  Future<Bucket> get(String bucket, {String projection, Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (projection != null && !["full", "no_acl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, no_acl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Bucket.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a new bucket.
   *
   * [request] - Bucket to send in this request
   *
   * [projection] - Set of properties to return. Defaults to no_acl, unless the bucket resource specifies acl or defaultObjectAcl properties, when it defaults to full.
   *   Allowed values:
   *     full - Include all properties.
   *     no_acl - Omit acl and defaultObjectAcl properties.
   *
   * [optParams] - Additional query parameters
   */
  Future<Bucket> insert(Bucket request, {String projection, Map optParams}) {
    var completer = new Completer();
    var url = "b";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (projection != null && !["full", "no_acl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, no_acl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Bucket.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a list of buckets for a given project.
   *
   * [projectId] - A valid API project identifier.
   *
   * [max_results] - Maximum number of buckets to return.
   *   Minimum: 0
   *
   * [pageToken] - A previously-returned page token representing part of the larger set of results to view.
   *
   * [projection] - Set of properties to return. Defaults to no_acl.
   *   Allowed values:
   *     full - Include all properties.
   *     no_acl - Omit acl and defaultObjectAcl properties.
   *
   * [optParams] - Additional query parameters
   */
  Future<Buckets> list(String projectId, {int max_results, String pageToken, String projection, Map optParams}) {
    var completer = new Completer();
    var url = "b";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (max_results != null) queryParams["max-results"] = max_results;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projectId == null) paramErrors.add("projectId is required");
    if (projectId != null) queryParams["projectId"] = projectId;
    if (projection != null && !["full", "no_acl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, no_acl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Buckets.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates a bucket. This method supports patch semantics.
   *
   * [request] - Bucket to send in this request
   *
   * [bucket] - Name of a bucket.
   *
   * [projection] - Set of properties to return. Defaults to full.
   *   Allowed values:
   *     full - Include all properties.
   *     no_acl - Omit acl and defaultObjectAcl properties.
   *
   * [optParams] - Additional query parameters
   */
  Future<Bucket> patch(Bucket request, String bucket, {String projection, Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (projection != null && !["full", "no_acl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, no_acl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Bucket.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates a bucket.
   *
   * [request] - Bucket to send in this request
   *
   * [bucket] - Name of a bucket.
   *
   * [projection] - Set of properties to return. Defaults to full.
   *   Allowed values:
   *     full - Include all properties.
   *     no_acl - Omit acl and defaultObjectAcl properties.
   *
   * [optParams] - Additional query parameters
   */
  Future<Bucket> update(Bucket request, String bucket, {String projection, Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (projection != null && !["full", "no_acl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, no_acl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Bucket.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ObjectAccessControlsResource extends Resource {

  ObjectAccessControlsResource(Client client) : super(client) {
  }

  /**
   * Deletes the ACL entry for the specified entity on the specified object.
   *
   * [bucket] - Name of a bucket.
   *
   * [object] - Name of the object.
   *
   * [entity] - The entity holding the permission. Can be user-userId, group-groupId, allUsers, or allAuthenticatedUsers.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String bucket, String object, String entity, {Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}/o/{object}/acl/{entity}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns the ACL entry for the specified entity on the specified object.
   *
   * [bucket] - Name of a bucket.
   *
   * [object] - Name of the object.
   *
   * [entity] - The entity holding the permission. Can be user-userId, group-groupId, allUsers, or allAuthenticatedUsers.
   *
   * [optParams] - Additional query parameters
   */
  Future<ObjectAccessControl> get(String bucket, String object, String entity, {Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}/o/{object}/acl/{entity}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ObjectAccessControl.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a new ACL entry on the specified object.
   *
   * [request] - ObjectAccessControl to send in this request
   *
   * [bucket] - Name of a bucket.
   *
   * [object] - Name of the object.
   *
   * [optParams] - Additional query parameters
   */
  Future<ObjectAccessControl> insert(ObjectAccessControl request, String bucket, String object, {Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}/o/{object}/acl";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ObjectAccessControl.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves ACL entries on the specified object.
   *
   * [bucket] - Name of a bucket.
   *
   * [object] - Name of the object.
   *
   * [optParams] - Additional query parameters
   */
  Future<ObjectAccessControls> list(String bucket, String object, {Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}/o/{object}/acl";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ObjectAccessControls.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates an ACL entry on the specified object. This method supports patch semantics.
   *
   * [request] - ObjectAccessControl to send in this request
   *
   * [bucket] - Name of a bucket.
   *
   * [object] - Name of the object.
   *
   * [entity] - The entity holding the permission. Can be user-userId, group-groupId, allUsers, or allAuthenticatedUsers.
   *
   * [optParams] - Additional query parameters
   */
  Future<ObjectAccessControl> patch(ObjectAccessControl request, String bucket, String object, String entity, {Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}/o/{object}/acl/{entity}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ObjectAccessControl.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates an ACL entry on the specified object.
   *
   * [request] - ObjectAccessControl to send in this request
   *
   * [bucket] - Name of a bucket.
   *
   * [object] - Name of the object.
   *
   * [entity] - The entity holding the permission. Can be user-userId, group-groupId, allUsers, or allAuthenticatedUsers.
   *
   * [optParams] - Additional query parameters
   */
  Future<ObjectAccessControl> update(ObjectAccessControl request, String bucket, String object, String entity, {Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}/o/{object}/acl/{entity}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (entity == null) paramErrors.add("entity is required");
    if (entity != null) urlParams["entity"] = entity;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ObjectAccessControl.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ObjectsResource extends Resource {

  ObjectsResource(Client client) : super(client) {
  }

  /**
   * Deletes data blobs and associated metadata.
   *
   * [bucket] - Name of the bucket in which the object resides.
   *
   * [object] - Name of the object.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String bucket, String object, {Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}/o/{object}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves objects or their associated metadata.
   *
   * [bucket] - Name of the bucket in which the object resides.
   *
   * [object] - Name of the object.
   *
   * [projection] - Set of properties to return. Defaults to no_acl.
   *   Allowed values:
   *     full - Include all properties.
   *     no_acl - Omit the acl property.
   *
   * [optParams] - Additional query parameters
   */
  Future<Object> get(String bucket, String object, {String projection, Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}/o/{object}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (projection != null && !["full", "no_acl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, no_acl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Object.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Stores new data blobs and associated metadata.
   *
   * [request] - Object to send in this request
   *
   * [bucket] - Name of the bucket in which to store the new object. Overrides the provided object metadata's bucket value, if any.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [name] - Name of the object. Required when the object metadata is not otherwise provided. Overrides the object metadata's name value, if any.
   *
   * [projection] - Set of properties to return. Defaults to no_acl, unless the object resource specifies the acl property, when it defaults to full.
   *   Allowed values:
   *     full - Include all properties.
   *     no_acl - Omit the acl property.
   *
   * [optParams] - Additional query parameters
   */
  Future<Object> insert(Object request, String bucket, {String content, String contentType, String name, String projection, Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}/o";
    var uploadUrl = "/upload/storage/v1beta1/b/{bucket}/o";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (name != null) queryParams["name"] = name;
    if (projection != null && !["full", "no_acl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, no_acl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    if (?content && content != null) {
      response = _client.upload(uploadUrl, "POST", request.toString(), content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    }
    response
      .then((data) => completer.complete(new Object.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a list of objects matching the criteria.
   *
   * [bucket] - Name of the bucket in which to look for objects.
   *
   * [delimiter] - Returns results in a directory-like mode. items will contain only objects whose names, aside from the prefix, do not contain delimiter. Objects whose names, aside from the prefix, contain delimiter will have their name, truncated after the delimiter, returned in prefixes. Duplicate prefixes are omitted.
   *
   * [max_results] - Maximum number of items plus prefixes to return. As duplicate prefixes are omitted, fewer total results may be returned than requested.
   *   Minimum: 0
   *
   * [pageToken] - A previously-returned page token representing part of the larger set of results to view.
   *
   * [prefix] - Filter results to objects whose names begin with this prefix.
   *
   * [projection] - Set of properties to return. Defaults to no_acl.
   *   Allowed values:
   *     full - Include all properties.
   *     no_acl - Omit the acl property.
   *
   * [optParams] - Additional query parameters
   */
  Future<Objects> list(String bucket, {String delimiter, int max_results, String pageToken, String prefix, String projection, Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}/o";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (delimiter != null) queryParams["delimiter"] = delimiter;
    if (max_results != null) queryParams["max-results"] = max_results;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (prefix != null) queryParams["prefix"] = prefix;
    if (projection != null && !["full", "no_acl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, no_acl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Objects.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates a data blob's associated metadata. This method supports patch semantics.
   *
   * [request] - Object to send in this request
   *
   * [bucket] - Name of the bucket in which the object resides.
   *
   * [object] - Name of the object.
   *
   * [projection] - Set of properties to return. Defaults to full.
   *   Allowed values:
   *     full - Include all properties.
   *     no_acl - Omit the acl property.
   *
   * [optParams] - Additional query parameters
   */
  Future<Object> patch(Object request, String bucket, String object, {String projection, Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}/o/{object}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (projection != null && !["full", "no_acl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, no_acl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Object.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates a data blob's associated metadata.
   *
   * [request] - Object to send in this request
   *
   * [bucket] - Name of the bucket in which the object resides.
   *
   * [object] - Name of the object.
   *
   * [projection] - Set of properties to return. Defaults to full.
   *   Allowed values:
   *     full - Include all properties.
   *     no_acl - Omit the acl property.
   *
   * [optParams] - Additional query parameters
   */
  Future<Object> update(Object request, String bucket, String object, {String projection, Map optParams}) {
    var completer = new Completer();
    var url = "b/{bucket}/o/{object}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (bucket == null) paramErrors.add("bucket is required");
    if (bucket != null) urlParams["bucket"] = bucket;
    if (object == null) paramErrors.add("object is required");
    if (object != null) urlParams["object"] = object;
    if (projection != null && !["full", "no_acl"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, no_acl");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Object.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

