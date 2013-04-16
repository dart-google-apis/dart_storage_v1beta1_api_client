part of storage_v1beta1_api_client;

/** A bucket. */
class Bucket {

  /** Access controls on the bucket. */
  core.List<BucketAccessControl> acl;

  /** Default access controls to apply to new objects when no ACL is provided. */
  core.List<ObjectAccessControl> defaultObjectAcl;

  /** The name of the bucket. */
  core.String id;

  /** The kind of item this is. For buckets, this is always storage#bucket. */
  core.String kind;

  /** The location of the bucket. Object data for objects in the bucket resides in physical storage in this location. Can be US or EU. Defaults to US. */
  core.String location;

  /** The owner of the bucket. This will always be the project team's owner group. */
  BucketOwner owner;

  /** The project the bucket belongs to. */
  core.String projectId;

  /** The URI of this bucket. */
  core.String selfLink;

  /** Creation time of the bucket in RFC 3339 format. */
  core.String timeCreated;

  /** The bucket's website configuration. */
  BucketWebsite website;

  /** Create new Bucket from JSON data */
  Bucket.fromJson(core.Map json) {
    if (json.containsKey("acl")) {
      acl = [];
      json["acl"].forEach((item) {
        acl.add(new BucketAccessControl.fromJson(item));
      });
    }
    if (json.containsKey("defaultObjectAcl")) {
      defaultObjectAcl = [];
      json["defaultObjectAcl"].forEach((item) {
        defaultObjectAcl.add(new ObjectAccessControl.fromJson(item));
      });
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("owner")) {
      owner = new BucketOwner.fromJson(json["owner"]);
    }
    if (json.containsKey("projectId")) {
      projectId = json["projectId"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("timeCreated")) {
      timeCreated = json["timeCreated"];
    }
    if (json.containsKey("website")) {
      website = new BucketWebsite.fromJson(json["website"]);
    }
  }

  /** Create JSON Object for Bucket */
  core.Map toJson() {
    var output = new core.Map();

    if (acl != null) {
      output["acl"] = new core.List();
      acl.forEach((item) {
        output["acl"].add(item.toJson());
      });
    }
    if (defaultObjectAcl != null) {
      output["defaultObjectAcl"] = new core.List();
      defaultObjectAcl.forEach((item) {
        output["defaultObjectAcl"].add(item.toJson());
      });
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (location != null) {
      output["location"] = location;
    }
    if (owner != null) {
      output["owner"] = owner.toJson();
    }
    if (projectId != null) {
      output["projectId"] = projectId;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (timeCreated != null) {
      output["timeCreated"] = timeCreated;
    }
    if (website != null) {
      output["website"] = website.toJson();
    }

    return output;
  }

  /** Return String representation of Bucket */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The owner of the bucket. This will always be the project team's owner group. */
class BucketOwner {

  /** The entity, in the form group-groupId. */
  core.String entity;

  /** The ID for the entity. */
  core.String entityId;

  /** Create new BucketOwner from JSON data */
  BucketOwner.fromJson(core.Map json) {
    if (json.containsKey("entity")) {
      entity = json["entity"];
    }
    if (json.containsKey("entityId")) {
      entityId = json["entityId"];
    }
  }

  /** Create JSON Object for BucketOwner */
  core.Map toJson() {
    var output = new core.Map();

    if (entity != null) {
      output["entity"] = entity;
    }
    if (entityId != null) {
      output["entityId"] = entityId;
    }

    return output;
  }

  /** Return String representation of BucketOwner */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The bucket's website configuration. */
class BucketWebsite {

  /** Behaves as the bucket's directory index where missing objects are treated as potential directories. */
  core.String mainPageSuffix;

  /** The custom object to return when a requested resource is not found. */
  core.String notFoundPage;

  /** Create new BucketWebsite from JSON data */
  BucketWebsite.fromJson(core.Map json) {
    if (json.containsKey("mainPageSuffix")) {
      mainPageSuffix = json["mainPageSuffix"];
    }
    if (json.containsKey("notFoundPage")) {
      notFoundPage = json["notFoundPage"];
    }
  }

  /** Create JSON Object for BucketWebsite */
  core.Map toJson() {
    var output = new core.Map();

    if (mainPageSuffix != null) {
      output["mainPageSuffix"] = mainPageSuffix;
    }
    if (notFoundPage != null) {
      output["notFoundPage"] = notFoundPage;
    }

    return output;
  }

  /** Return String representation of BucketWebsite */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An access-control entry. */
class BucketAccessControl {

  /** The name of the bucket. */
  core.String bucket;

  /** The domain associated with the entity, if any. */
  core.String domain;

  /** The email address associated with the entity, if any. */
  core.String email;

  /** The entity holding the permission, in one of the following forms: 
- user-userId 
- user-email 
- group-groupId 
- group-email 
- allUsers 
- allAuthenticatedUsers */
  core.String entity;

  /** The ID for the entity, if any. */
  core.String entityId;

  /** The ID of the access-control entry. */
  core.String id;

  /** The kind of item this is. For bucket access control entries, this is always storage#bucketAccessControl. */
  core.String kind;

  /** The access permission for the entity. Can be READER, WRITER, or OWNER. */
  core.String role;

  /** The link to this access-control entry. */
  core.String selfLink;

  /** Create new BucketAccessControl from JSON data */
  BucketAccessControl.fromJson(core.Map json) {
    if (json.containsKey("bucket")) {
      bucket = json["bucket"];
    }
    if (json.containsKey("domain")) {
      domain = json["domain"];
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("entity")) {
      entity = json["entity"];
    }
    if (json.containsKey("entityId")) {
      entityId = json["entityId"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("role")) {
      role = json["role"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for BucketAccessControl */
  core.Map toJson() {
    var output = new core.Map();

    if (bucket != null) {
      output["bucket"] = bucket;
    }
    if (domain != null) {
      output["domain"] = domain;
    }
    if (email != null) {
      output["email"] = email;
    }
    if (entity != null) {
      output["entity"] = entity;
    }
    if (entityId != null) {
      output["entityId"] = entityId;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (role != null) {
      output["role"] = role;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of BucketAccessControl */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An access-control list. */
class BucketAccessControls {

  /** The list of items. */
  core.List<BucketAccessControl> items;

  /** The kind of item this is. For lists of bucket access control entries, this is always storage#bucketAccessControls. */
  core.String kind;

  /** Create new BucketAccessControls from JSON data */
  BucketAccessControls.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new BucketAccessControl.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for BucketAccessControls */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of BucketAccessControls */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A list of buckets. */
class Buckets {

  /** The list of items. */
  core.List<Bucket> items;

  /** The kind of item this is. For lists of buckets, this is always storage#buckets. */
  core.String kind;

  /** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  core.String nextPageToken;

  /** Create new Buckets from JSON data */
  Buckets.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Bucket.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for Buckets */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of Buckets */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An object. */
class Object {

  /** Access controls on the object. */
  core.List<ObjectAccessControl> acl;

  /** The bucket containing this object. */
  core.String bucket;

  /** Cache-Control directive for the object data. */
  core.String cacheControl;

  /** Content-Disposition of the object data. */
  core.String contentDisposition;

  /** Content-Encoding of the object data. */
  core.String contentEncoding;

  /** Content-Language of the object data. */
  core.String contentLanguage;

  /** The ID of the object. */
  core.String id;

  /** The kind of item this is. For objects, this is always storage#object. */
  core.String kind;

  /** Object media data. Provided on your behalf when uploading raw media or multipart/related with an auxiliary media part. */
  ObjectMedia media;

  /** User-provided metadata, in key/value pairs. */
  ObjectMetadata metadata;

  /** The name of this object. Required if not specified by URL parameter. */
  core.String name;

  /** The owner of the object. This will always be the uploader of the object. */
  ObjectOwner owner;

  /** The link to this object. */
  core.String selfLink;

  /** Create new Object from JSON data */
  Object.fromJson(core.Map json) {
    if (json.containsKey("acl")) {
      acl = [];
      json["acl"].forEach((item) {
        acl.add(new ObjectAccessControl.fromJson(item));
      });
    }
    if (json.containsKey("bucket")) {
      bucket = json["bucket"];
    }
    if (json.containsKey("cacheControl")) {
      cacheControl = json["cacheControl"];
    }
    if (json.containsKey("contentDisposition")) {
      contentDisposition = json["contentDisposition"];
    }
    if (json.containsKey("contentEncoding")) {
      contentEncoding = json["contentEncoding"];
    }
    if (json.containsKey("contentLanguage")) {
      contentLanguage = json["contentLanguage"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("media")) {
      media = new ObjectMedia.fromJson(json["media"]);
    }
    if (json.containsKey("metadata")) {
      metadata = new ObjectMetadata.fromJson(json["metadata"]);
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("owner")) {
      owner = new ObjectOwner.fromJson(json["owner"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for Object */
  core.Map toJson() {
    var output = new core.Map();

    if (acl != null) {
      output["acl"] = new core.List();
      acl.forEach((item) {
        output["acl"].add(item.toJson());
      });
    }
    if (bucket != null) {
      output["bucket"] = bucket;
    }
    if (cacheControl != null) {
      output["cacheControl"] = cacheControl;
    }
    if (contentDisposition != null) {
      output["contentDisposition"] = contentDisposition;
    }
    if (contentEncoding != null) {
      output["contentEncoding"] = contentEncoding;
    }
    if (contentLanguage != null) {
      output["contentLanguage"] = contentLanguage;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (media != null) {
      output["media"] = media.toJson();
    }
    if (metadata != null) {
      output["metadata"] = metadata.toJson();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (owner != null) {
      output["owner"] = owner.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of Object */
  core.String toString() => JSON.stringify(this.toJson());

}

/** User-provided metadata, in key/value pairs. */
class ObjectMetadata {

  /** Create new ObjectMetadata from JSON data */
  ObjectMetadata.fromJson(core.Map json) {
  }

  /** Create JSON Object for ObjectMetadata */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of ObjectMetadata */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The owner of the object. This will always be the uploader of the object. */
class ObjectOwner {

  /** The entity, in the form user-userId. */
  core.String entity;

  /** The ID for the entity. */
  core.String entityId;

  /** Create new ObjectOwner from JSON data */
  ObjectOwner.fromJson(core.Map json) {
    if (json.containsKey("entity")) {
      entity = json["entity"];
    }
    if (json.containsKey("entityId")) {
      entityId = json["entityId"];
    }
  }

  /** Create JSON Object for ObjectOwner */
  core.Map toJson() {
    var output = new core.Map();

    if (entity != null) {
      output["entity"] = entity;
    }
    if (entityId != null) {
      output["entityId"] = entityId;
    }

    return output;
  }

  /** Return String representation of ObjectOwner */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Object media data. Provided on your behalf when uploading raw media or multipart/related with an auxiliary media part. */
class ObjectMedia {

  /** Hash algorithm used. Currently only MD5 is supported. Required if a hash is provided. */
  core.String algorithm;

  /** Content-Type of the object data. */
  core.String contentType;

  /** URL-safe Base64-encoded data. This property can be used to insert objects under 64KB in size, and will only be returned in response to the get method for objects so created. When this resource is returned in response to the list method, this property is omitted. */
  core.String data;

  /** Hash of the data. Required if a hash algorithm is provided. */
  core.String hash;

  /** Content-Length of the data in bytes. */
  core.String length;

  /** Media download link. */
  core.String link;

  /** Creation time of the data in RFC 3339 format. */
  core.String timeCreated;

  /** Create new ObjectMedia from JSON data */
  ObjectMedia.fromJson(core.Map json) {
    if (json.containsKey("algorithm")) {
      algorithm = json["algorithm"];
    }
    if (json.containsKey("contentType")) {
      contentType = json["contentType"];
    }
    if (json.containsKey("data")) {
      data = json["data"];
    }
    if (json.containsKey("hash")) {
      hash = json["hash"];
    }
    if (json.containsKey("length")) {
      length = json["length"];
    }
    if (json.containsKey("link")) {
      link = json["link"];
    }
    if (json.containsKey("timeCreated")) {
      timeCreated = json["timeCreated"];
    }
  }

  /** Create JSON Object for ObjectMedia */
  core.Map toJson() {
    var output = new core.Map();

    if (algorithm != null) {
      output["algorithm"] = algorithm;
    }
    if (contentType != null) {
      output["contentType"] = contentType;
    }
    if (data != null) {
      output["data"] = data;
    }
    if (hash != null) {
      output["hash"] = hash;
    }
    if (length != null) {
      output["length"] = length;
    }
    if (link != null) {
      output["link"] = link;
    }
    if (timeCreated != null) {
      output["timeCreated"] = timeCreated;
    }

    return output;
  }

  /** Return String representation of ObjectMedia */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An access-control entry. */
class ObjectAccessControl {

  /** The name of the bucket. */
  core.String bucket;

  /** The domain associated with the entity, if any. */
  core.String domain;

  /** The email address associated with the entity, if any. */
  core.String email;

  /** The entity holding the permission, in one of the following forms: 
- user-userId 
- user-email 
- group-groupId 
- group-email 
- allUsers 
- allAuthenticatedUsers */
  core.String entity;

  /** The ID for the entity, if any. */
  core.String entityId;

  /** The ID of the access-control entry. */
  core.String id;

  /** The kind of item this is. For object access control entries, this is always storage#objectAccessControl. */
  core.String kind;

  /** The name of the object. */
  core.String object;

  /** The access permission for the entity. Can be READER or OWNER. */
  core.String role;

  /** The link to this access-control entry. */
  core.String selfLink;

  /** Create new ObjectAccessControl from JSON data */
  ObjectAccessControl.fromJson(core.Map json) {
    if (json.containsKey("bucket")) {
      bucket = json["bucket"];
    }
    if (json.containsKey("domain")) {
      domain = json["domain"];
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("entity")) {
      entity = json["entity"];
    }
    if (json.containsKey("entityId")) {
      entityId = json["entityId"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("object")) {
      object = json["object"];
    }
    if (json.containsKey("role")) {
      role = json["role"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for ObjectAccessControl */
  core.Map toJson() {
    var output = new core.Map();

    if (bucket != null) {
      output["bucket"] = bucket;
    }
    if (domain != null) {
      output["domain"] = domain;
    }
    if (email != null) {
      output["email"] = email;
    }
    if (entity != null) {
      output["entity"] = entity;
    }
    if (entityId != null) {
      output["entityId"] = entityId;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (object != null) {
      output["object"] = object;
    }
    if (role != null) {
      output["role"] = role;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of ObjectAccessControl */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An access-control list. */
class ObjectAccessControls {

  /** The list of items. */
  core.List<ObjectAccessControl> items;

  /** The kind of item this is. For lists of object access control entries, this is always storage#objectAccessControls. */
  core.String kind;

  /** Create new ObjectAccessControls from JSON data */
  ObjectAccessControls.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new ObjectAccessControl.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for ObjectAccessControls */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of ObjectAccessControls */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A list of objects. */
class Objects {

  /** The list of items. */
  core.List<Object> items;

  /** The kind of item this is. For lists of objects, this is always storage#objects. */
  core.String kind;

  /** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  core.String nextPageToken;

  /** The list of prefixes of objects matching-but-not-listed up to and including the requested delimiter. */
  core.List<core.String> prefixes;

  /** Create new Objects from JSON data */
  Objects.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Object.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("prefixes")) {
      prefixes = [];
      json["prefixes"].forEach((item) {
        prefixes.add(item);
      });
    }
  }

  /** Create JSON Object for Objects */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (prefixes != null) {
      output["prefixes"] = new core.List();
      prefixes.forEach((item) {
        output["prefixes"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of Objects */
  core.String toString() => JSON.stringify(this.toJson());

}

