// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weapon_skin_level_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeaponSkinLevelResponse _$WeaponSkinLevelResponseFromJson(
    Map<String, dynamic> json) {
  return _WeaponSkinLevelResponse.fromJson(json);
}

/// @nodoc
mixin _$WeaponSkinLevelResponse {
  String get uuid => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get levelItem => throw _privateConstructorUsedError;
  String? get displayIcon => throw _privateConstructorUsedError;
  String? get streamedVideo => throw _privateConstructorUsedError;
  String? get assetPath => throw _privateConstructorUsedError;

  /// Serializes this WeaponSkinLevelResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeaponSkinLevelResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeaponSkinLevelResponseCopyWith<WeaponSkinLevelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeaponSkinLevelResponseCopyWith<$Res> {
  factory $WeaponSkinLevelResponseCopyWith(WeaponSkinLevelResponse value,
          $Res Function(WeaponSkinLevelResponse) then) =
      _$WeaponSkinLevelResponseCopyWithImpl<$Res, WeaponSkinLevelResponse>;
  @useResult
  $Res call(
      {String uuid,
      String displayName,
      String? levelItem,
      String? displayIcon,
      String? streamedVideo,
      String? assetPath});
}

/// @nodoc
class _$WeaponSkinLevelResponseCopyWithImpl<$Res,
        $Val extends WeaponSkinLevelResponse>
    implements $WeaponSkinLevelResponseCopyWith<$Res> {
  _$WeaponSkinLevelResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeaponSkinLevelResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? displayName = null,
    Object? levelItem = freezed,
    Object? displayIcon = freezed,
    Object? streamedVideo = freezed,
    Object? assetPath = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      levelItem: freezed == levelItem
          ? _value.levelItem
          : levelItem // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      streamedVideo: freezed == streamedVideo
          ? _value.streamedVideo
          : streamedVideo // ignore: cast_nullable_to_non_nullable
              as String?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeaponSkinLevelResponseImplCopyWith<$Res>
    implements $WeaponSkinLevelResponseCopyWith<$Res> {
  factory _$$WeaponSkinLevelResponseImplCopyWith(
          _$WeaponSkinLevelResponseImpl value,
          $Res Function(_$WeaponSkinLevelResponseImpl) then) =
      __$$WeaponSkinLevelResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String displayName,
      String? levelItem,
      String? displayIcon,
      String? streamedVideo,
      String? assetPath});
}

/// @nodoc
class __$$WeaponSkinLevelResponseImplCopyWithImpl<$Res>
    extends _$WeaponSkinLevelResponseCopyWithImpl<$Res,
        _$WeaponSkinLevelResponseImpl>
    implements _$$WeaponSkinLevelResponseImplCopyWith<$Res> {
  __$$WeaponSkinLevelResponseImplCopyWithImpl(
      _$WeaponSkinLevelResponseImpl _value,
      $Res Function(_$WeaponSkinLevelResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeaponSkinLevelResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? displayName = null,
    Object? levelItem = freezed,
    Object? displayIcon = freezed,
    Object? streamedVideo = freezed,
    Object? assetPath = freezed,
  }) {
    return _then(_$WeaponSkinLevelResponseImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      levelItem: freezed == levelItem
          ? _value.levelItem
          : levelItem // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      streamedVideo: freezed == streamedVideo
          ? _value.streamedVideo
          : streamedVideo // ignore: cast_nullable_to_non_nullable
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
class _$WeaponSkinLevelResponseImpl implements _WeaponSkinLevelResponse {
  const _$WeaponSkinLevelResponseImpl(
      {required this.uuid,
      required this.displayName,
      this.levelItem,
      this.displayIcon,
      this.streamedVideo,
      this.assetPath});

  factory _$WeaponSkinLevelResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeaponSkinLevelResponseImplFromJson(json);

  @override
  final String uuid;
  @override
  final String displayName;
  @override
  final String? levelItem;
  @override
  final String? displayIcon;
  @override
  final String? streamedVideo;
  @override
  final String? assetPath;

  @override
  String toString() {
    return 'WeaponSkinLevelResponse(uuid: $uuid, displayName: $displayName, levelItem: $levelItem, displayIcon: $displayIcon, streamedVideo: $streamedVideo, assetPath: $assetPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeaponSkinLevelResponseImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.levelItem, levelItem) ||
                other.levelItem == levelItem) &&
            (identical(other.displayIcon, displayIcon) ||
                other.displayIcon == displayIcon) &&
            (identical(other.streamedVideo, streamedVideo) ||
                other.streamedVideo == streamedVideo) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, displayName, levelItem,
      displayIcon, streamedVideo, assetPath);

  /// Create a copy of WeaponSkinLevelResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeaponSkinLevelResponseImplCopyWith<_$WeaponSkinLevelResponseImpl>
      get copyWith => __$$WeaponSkinLevelResponseImplCopyWithImpl<
          _$WeaponSkinLevelResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeaponSkinLevelResponseImplToJson(
      this,
    );
  }
}

abstract class _WeaponSkinLevelResponse implements WeaponSkinLevelResponse {
  const factory _WeaponSkinLevelResponse(
      {required final String uuid,
      required final String displayName,
      final String? levelItem,
      final String? displayIcon,
      final String? streamedVideo,
      final String? assetPath}) = _$WeaponSkinLevelResponseImpl;

  factory _WeaponSkinLevelResponse.fromJson(Map<String, dynamic> json) =
      _$WeaponSkinLevelResponseImpl.fromJson;

  @override
  String get uuid;
  @override
  String get displayName;
  @override
  String? get levelItem;
  @override
  String? get displayIcon;
  @override
  String? get streamedVideo;
  @override
  String? get assetPath;

  /// Create a copy of WeaponSkinLevelResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeaponSkinLevelResponseImplCopyWith<_$WeaponSkinLevelResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
