// Copyright ©2022, GM Consult (Pty) Ltd
// BSD 3-Clause License
// All rights reserved

/// Alias for `Map<String, dynamic>`.
typedef JSON = Map<String, dynamic>;

/// Alias for `Map<String, Map<String, dynamic>>;`.
typedef DataCollection<T extends Object> = Map<String, T>;

/// Alias for `Map<String, Map<String, dynamic>>;`.
typedef JsonCollection = DataCollection<JSON>;

/// Alias for `List<Map<String, dynamic>>`.
typedef TestResults = Iterable<Map<String, dynamic>>;

/// Alias for `dynamic Function(Map<String, dynamic> json)`.
///
/// Use to find a primary key in [JSON].
typedef KeyBuilder = String Function(Map<String, dynamic> json);

/// Alias for `T Function(JSON json)`.
///
/// Defines a function that deserializes [JSON] to an object of type [T].
typedef JsonDeserializer<T extends Object> = T Function(JSON json);

/// Alias for `JSON Function(JSON obj)`.
///
/// Defines a function that serializes an object of type [T] to [JSON].
typedef JsonSerializer<T extends Object> = JSON Function(T obj);

/// Alias for `Map<String, String>`.
typedef QueryParameters = Map<String, String>;

/// Alias for `Map<String, String>`.
typedef HttpHeaders = Map<String, String>;
