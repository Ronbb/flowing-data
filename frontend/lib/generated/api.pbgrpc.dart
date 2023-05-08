///
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'api.pb.dart' as $0;
export 'api.pb.dart';

class FlowingClient extends $grpc.Client {
  static final _$getTree =
      $grpc.ClientMethod<$0.GetTreeRequest, $0.GetTreeResponse>(
          '/flowing.Flowing/GetTree',
          ($0.GetTreeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetTreeResponse.fromBuffer(value));

  FlowingClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetTreeResponse> getTree($0.GetTreeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTree, request, options: options);
  }
}

abstract class FlowingServiceBase extends $grpc.Service {
  $core.String get $name => 'flowing.Flowing';

  FlowingServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetTreeRequest, $0.GetTreeResponse>(
        'GetTree',
        getTree_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetTreeRequest.fromBuffer(value),
        ($0.GetTreeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetTreeResponse> getTree_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetTreeRequest> request) async {
    return getTree(call, await request);
  }

  $async.Future<$0.GetTreeResponse> getTree(
      $grpc.ServiceCall call, $0.GetTreeRequest request);
}
