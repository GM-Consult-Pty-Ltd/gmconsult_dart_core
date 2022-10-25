// Copyright ©2022, GM Consult (Pty) Ltd
// BSD 3-Clause License
// All rights reserved

import 'package:gmconsult_dart_core/src/_index.dart';

/// The [ApiEndpoint] enumerates the properties needed to interact with a REST
/// API endpoint.
///
/// [ApiEndpoint] exposes the following methods:
/// - [getJson] asynchronously gets a JSON object from the endpoint.
/// - [postJson] asyncronlously posts a JSON object to the endpoint.
/// - [get] asynchronously gets an an object of type [T] from the API endpoint.
/// from the API endpoint
abstract class ApiEndpoint<T extends Object> {
  //

  /// A factory constructor that returns a [ApiEndpoint] from the parameters.
  /// - [deserializer] deserializes [JSON] to an object of type [T].
  /// - [serializer] serializes an object of type [T] to [JSON].
  /// - [host] is the host part of the API endpoint request.
  /// - [headers] is a nullable hashmap of headers for the API endpoint request.
  /// - [path] is the path element for the API endpoint uri. Defaults to an
  ///   empty String.
  /// - [protocol] is the [HttpProtocol] of the API endpoint.
  /// - [queryParameters] is a nullable hashmap of query parameters for the
  ///   API endpoint request.
  factory ApiEndpoint(
          {required JsonDeserializer<T> deserializer,
          required String host,
          required JsonSerializer<T> serializer,
          HttpHeaders? headers,
          String path = '',
          HttpProtocol protocol = HttpProtocol.https,
          QueryParameters? queryParameters}) =>
      _ApiEndpointImpl(deserializer, headers, host, path, protocol,
          queryParameters, serializer);

  /// Asynchronously gets a JSON object from the API endpoint using GET.
  Future<Map<String, dynamic>?> getJson();

  /// Asynchronously posts a [json] document to the API endpoint using POST.
  ///
  /// Returns the (updated) [json].
  Future<Map<String, dynamic>?> postJson(JSON? json);

  /// Asynchronously returns an object of type [T] from the API endpoint.
  Future<T?> get();

  /// Asynchronously posts an [obj] of type [T] to the API endpoint using POST.
  ///
  /// Returns the (updated) [obj].
  Future<T?> post(T? obj);

  /// The path element for the API endpoint uri.
  String get path;

  /// The host part of the API endpoint request.
  String get host;

  /// Returns the headers for the API endpoint request.
  Map<String, String>? get headers;

  /// The protocol of the API endpoint.
  HttpProtocol get protocol;

  /// The query parameters for the endpoint.
  Map<String, String>? get queryParameters;

  /// Returns the name of the endpoint
  String get name;
}

/// Mixin class that implements the [getJson], [postJson], [get] and [post]
/// methods of [ApiEndpoint].
///
/// Also implements the [name] field as `runtimeType.toString()`.
abstract class ApiEndpointMixin<T extends Object> implements ApiEndpoint<T> {
  //

  @override
  String get name => runtimeType.toString();

  /// Deserializes [JSON] to an object of type [T].
  JsonDeserializer<T> get deserializer;

  /// Serializes an object of type [T] to [JSON].
  JsonSerializer<T> get serializer;

  @override
  Future<Map<String, dynamic>?> getJson() => JsonApi.instance.get(
      host: host,
      path: path,
      headers: headers,
      queryParameters: queryParameters,
      isHttps: protocol == HttpProtocol.https);

  @override
  Future<Map<String, dynamic>?> postJson(JSON? json) => JsonApi.instance.post(
      body: json,
      host: host,
      path: path,
      headers: headers,
      queryParameters: queryParameters,
      isHttps: protocol == HttpProtocol.https);

  @override
  Future<T?> get() async {
    final json = await getJson();
    return json == null ? null : deserializer(json);
  }

  @override
  Future<T?> post(T? obj) async {
    final json = await postJson(obj == null ? null : serializer(obj));
    return json == null ? null : deserializer(json);
  }
}

/// Implementation base class for [ApiEndpoint] with [ApiEndpointMixin].
abstract class ApiEndpointBase<T extends Object> with ApiEndpointMixin<T> {
  /// Const default generative constructor for base classes.
  const ApiEndpointBase();
}

/// Implementation class for [ApiEndpoint] factory constructor.
class _ApiEndpointImpl<T extends Object> extends ApiEndpointBase<T> {
  //

  @override
  final JsonDeserializer<T> deserializer;

  @override
  final Map<String, String>? headers;

  @override
  final String host;

  @override
  final String path;

  @override
  final HttpProtocol protocol;

  @override
  final Map<String, String>? queryParameters;

  @override
  final JsonSerializer<T> serializer;

  /// Const default generative constructor.
  const _ApiEndpointImpl(this.deserializer, this.headers, this.host, this.path,
      this.protocol, this.queryParameters, this.serializer);
}
