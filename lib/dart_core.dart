// Copyright ©2022, GM Consult (Pty) Ltd.
// BSD 3-Clause License
// All rights reserved

/// Core DART libraries that provide a framework for GM Consult `DART`
/// applications.
library dart_core;

// export 'src/_common/_index.dart';
export 'src/meta/_index.dart' show GmConsult;
export 'src/language/_index.dart' show Language;
export 'src/data_services/_index.dart'
    show
        ApiEndpoint,
        ApiEndpointBase,
        ApiEndpointMixin,
        HttpProtocol,
        JsonApi,
        JsonApiMixin,
        JsonApiBase;
export 'src/collections/_index.dart' show Array, Matrix;
