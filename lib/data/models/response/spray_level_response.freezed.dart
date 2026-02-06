// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spray_level_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SprayLevelResponse _$SprayLevelResponseFromJson(Map<String, dynamic> json) {
  return _SprayLevelResponse.fromJson(json);
}

/// @nodoc
mixin _$SprayLevelResponse {
  String get uuid => throw _privateConstructorUsedError;
  int get sprayLevel => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get displayIcon => throw _privateConstructorUsedError;
  String? get assetPath => throw _privateConstructorUsedError;

  /// Serializes this SprayLevelResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SprayLevelResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SprayLevelResponseCopyWith<SprayLevelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SprayLevelResponseCopyWith<$Res> {
  factory $SprayLevelResponseCopyWith(
          SprayLevelResponse value, $Res Function(SprayLevelResponse) then) =
      _$SprayLevelResponseCopyWithImpl<$Res, SprayLevelResponse>;
  @useResult
  $Res call(
      {String uuid,
      int sprayLevel,
      String displayName,
      String? displayIcon,
      String? assetPath});
}

/// @nodoc
class _$SprayLevelResponseCopyWithImpl<$Res, $Val extends SprayLevelResponse>
    implements $SprayLevelResponseCopyWith<$Res> {
  _$SprayLevelResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SprayLevelResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? sprayLevel = null,
    Object? displayName = null,
    Object? displayIcon = freezed,
    Object? assetPath = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      sprayLevel: null == sprayLevel
          ? _value.sprayLevel
          : sprayLevel // ignore: cast_nullable_to_non_nullable
              as int,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SprayLevelResponseImplCopyWith<$Res>
    implements $SprayLevelResponseCopyWith<$Res> {
  factory _$$SprayLevelResponseImplCopyWith(_$SprayLevelResponseImpl value,
          $Res Function(_$SprayLevelResponseImpl) then) =
      __$$SprayLevelResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      int sprayLevel,
      String displayName,
      String? displayIcon,
      String? assetPath});
}

/// @nodoc
class __$$SprayLevelResponseImplCopyWithImpl<$Res>
    extends _$SprayLevelResponseCopyWithImpl<$Res, _$SprayLevelResponseImpl>
    implements _$$SprayLevelResponseImplCopyWith<$Res> {
  __$$SprayLevelResponseImplCopyWithImpl(_$SprayLevelResponseImpl _value,
      $Res Function(_$SprayLevelResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SprayLevelResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? sprayLevel = null,
    Object? displayName = null,
    Object? displayIcon = freezed,
    Object? assetPath = freezed,
  }) {
    return _then(_$SprayLevelResponseImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      sprayLevel: null == sprayLevel
          ? _value.sprayLevel
          : sprayLevel // ignore: cast_nullable_to_non_nullable
              as int,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SprayLevelResponseImpl implements _SprayLevelResponse {
  const _$SprayLevelResponseImpl(
      {required this.uuid,
      required this.sprayLevel,
      required this.displayName,
      this.displayIcon,
      this.assetPath});

  factory _$SprayLevelResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SprayLevelResponseImplFromJson(json);

  @override
  final String uuid;
  @override
  final int sprayLevel;
  @override
  final String displayName;
  @override
  final String? displayIcon;
  @override
  final String? assetPath;

  @override
  String toString() {
    return 'SprayLevelResponse(uuid: $uuid, sprayLevel: $sprayLevel, displayName: $displayName, displayIcon: $displayIcon, assetPath: $assetPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SprayLevelResponseImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.sprayLevel, sprayLevel) ||
                other.sprayLevel == sprayLevel) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.displayIcon, displayIcon) ||
                other.displayIcon == displayIcon) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, uuid, sprayLevel, displayName, displayIcon, assetPath);

  /// Create a copy of SprayLevelResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SprayLevelResponseImplCopyWith<_$SprayLevelResponseImpl> get copyWith =>
      __$$SprayLevelResponseImplCopyWithImpl<_$SprayLevelResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SprayLevelResponseImplToJson(
      this,
    );
  }
}

abstract class _SprayLevelResponse implements SprayLevelResponse {
  const factory _SprayLevelResponse(
      {required final String uuid,
      required final int sprayLevel,
      required final String displayName,
      final String? displayIcon,
      final String? assetPath}) = _$SprayLevelResponseImpl;

  factory _SprayLevelResponse.fromJson(Map<String, dynamic> json) =
      _$SprayLevelResponseImpl.fromJson;

  @override
  String get uuid;
  @override
  int get sprayLevel;
  @override
  String get displayName;
  @override
  String? get displayIcon;
  @override
  String? get assetPath;

  /// Create a copy of SprayLevelResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SprayLevelResponseImplCopyWith<_$SprayLevelResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
