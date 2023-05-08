///
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'tree.pb.dart' as $1;

class GetTreeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTreeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flowing'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'root')
    ..hasRequiredFields = false
  ;

  GetTreeRequest._() : super();
  factory GetTreeRequest({
    $core.String? root,
  }) {
    final _result = create();
    if (root != null) {
      _result.root = root;
    }
    return _result;
  }
  factory GetTreeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTreeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTreeRequest clone() => GetTreeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTreeRequest copyWith(void Function(GetTreeRequest) updates) => super.copyWith((message) => updates(message as GetTreeRequest)) as GetTreeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTreeRequest create() => GetTreeRequest._();
  GetTreeRequest createEmptyInstance() => create();
  static $pb.PbList<GetTreeRequest> createRepeated() => $pb.PbList<GetTreeRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTreeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTreeRequest>(create);
  static GetTreeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get root => $_getSZ(0);
  @$pb.TagNumber(1)
  set root($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoot() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoot() => clearField(1);
}

class GetTreeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTreeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'flowing'), createEmptyInstance: create)
    ..aOM<$1.TreeNode>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'root', subBuilder: $1.TreeNode.create)
    ..hasRequiredFields = false
  ;

  GetTreeResponse._() : super();
  factory GetTreeResponse({
    $1.TreeNode? root,
  }) {
    final _result = create();
    if (root != null) {
      _result.root = root;
    }
    return _result;
  }
  factory GetTreeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTreeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTreeResponse clone() => GetTreeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTreeResponse copyWith(void Function(GetTreeResponse) updates) => super.copyWith((message) => updates(message as GetTreeResponse)) as GetTreeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTreeResponse create() => GetTreeResponse._();
  GetTreeResponse createEmptyInstance() => create();
  static $pb.PbList<GetTreeResponse> createRepeated() => $pb.PbList<GetTreeResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTreeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTreeResponse>(create);
  static GetTreeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.TreeNode get root => $_getN(0);
  @$pb.TagNumber(1)
  set root($1.TreeNode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoot() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoot() => clearField(1);
  @$pb.TagNumber(1)
  $1.TreeNode ensureRoot() => $_ensure(0);
}

