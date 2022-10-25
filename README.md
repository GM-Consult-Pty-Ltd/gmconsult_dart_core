<!-- 
BSD 3-Clause License
Copyright (c) 2022, GM Consult Pty Ltd
All rights reserved. 
-->

[![GM Consult Core DART libraries](https://raw.githubusercontent.com/GM-Consult-Pty-Ltd/gmconsult_dart_core/main/dev/images/package_header.png?raw=true "Core DART libraries for GM Consult applications")](https://github.com/GM-Consult-Pty-Ltd)
## **Core DART libraries that provide a framework for GM Consult DART applications.**

*THIS PACKAGE IS A PROPRIETARY, UNLISTED RESOURCE AND SUBJECT TO BREAKING CHANGES WITHOUT NOTICE.*

Skip to section:
- [Overview](#overview)
- [Usage](#usage)
- [API](#api)
- [Definitions](#definitions)
- [References](#references)
- [Issues](#issues)

## Overview

Key classes:
* Metadata for the enterprise is provided in the [GMConsult](https://pub.dev/documentation/gmconsult_dart_core/latest/gmconsult_dart_core/GmConsult-class.html) as static constant class fields.
* Use the [Language](https://pub.dev/documentation/gmconsult_dart_core/latest/gmconsult_dart_core/Language-class.html) class for strongly-typed, locale-aware language identifiers
* Use the [JsonApi](https://pub.dev/documentation/gmconsult_dart_core/latest/gmconsult_dart_core/JsonApi-class.html) class to `GET` or `POST` JSON data from/to a RESTful API.
* Use the [ApiEndpoint](https://pub.dev/documentation/gmconsult_dart_core/latest/gmconsult_dart_core/ApiEndpoint-class.html) class for strongly typed object retrieval from a RESTful API that returns JSON documents.
* the [Array](https://pub.dev/documentation/gmconsult_dart_core/latest/gmconsult_dart_core/Array-class.html) and [Matrix](https://pub.dev/documentation/gmconsult_dart_core/latest/gmconsult_dart_core/Matrix-class.html) classes provide ordered n-based collections.

(*[back to top](#)*)

## Usage

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:
  gmconsult_dart_core: <latest_version>
```

In your code file add the following import:

```dart
// import the core interfaces, classes and mixins
import 'package:gmconsult_dart_core/dart_core.dart';

// import the typedefs if needed
import 'package:gmconsult_dart_core/type_definitions.dart';

// import the extensions if needed
import 'package:gmconsult_dart_core/extensions.dart';

```

See the [examples](https://pub.dev/packages/gmconsult_dart_core/example) for code snippets.

(*[back to top](#)*)

## API

API documentation is available on [pub.dev](https://pub.dev/documentation/gmconsult_dart_core/latest/)/

(*[back to top](#)*)

## Definitions

None

(*[back to top](#)*)

## References

None

(*[back to top](#)*)

## Issues

GM Consult team members should [log issues and bugs](https://github.com/GM-Consult-Pty-Ltd/gmconsult_dart_core/issues).  

This project is an internal package for GM Consult projects and we cannot respond to pull requests or issues raised by non team members.

(*[back to top](#)*)


