# google_storage_v1beta1_api

### Description

Auto-generated client library for accessing the storage v1beta1 API.

#### ![Logo](https://www.google.com/images/icons/product/cloud_storage-16.png) Cloud Storage API - storage v1beta1

Lets you store and retrieve potentially-large, immutable data objects.

Official API documentation: https://developers.google.com/storage/docs/json_api/

Adding dependency to pubspec.yaml

```
  dependencies:
    google_storage_v1beta1_api: '>=0.4.10'
```

For web applications:

```
  import "package:google_storage_v1beta1_api/storage_v1beta1_api_browser.dart" as storageclient;
```

For console application:

```
  import "package:google_storage_v1beta1_api/storage_v1beta1_api_console.dart" as storageclient;
```

Working with out authentication the following constructor can be called:

```
  var storage = new storageclient.Storage();
```

Working with authentication then create a new `GoogleOAuth2` object and pass it to the constructor:


```
  GoogleOAuth2 auth = new GoogleOAuth2(CLIENT_ID, SCOPES);
  var storage = new storageclient.Storage(auth);
```

### Licenses

```
Copyright (c) 2013 Gerwin Sturm & Adam Singer

Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a 
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

------------------------
Based on http://code.google.com/p/google-api-dart-client

Copyright 2012 Google Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

```
