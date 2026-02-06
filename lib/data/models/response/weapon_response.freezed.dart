// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weapon_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeaponResponse _$WeaponResponseFromJson(Map<String, dynamic> json) {
  return _WeaponResponse.fromJson(json);
}

/// @nodoc
mixin _$WeaponResponse {
  String get uuid => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get displayIcon => throw _privateConstructorUsedError;
  List<WeaponSkinResponse> get skins => throw _privateConstructorUsedError;

  /// Serializes this WeaponResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeaponResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeaponResponseCopyWith<WeaponResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeaponResponseCopyWith<$Res> {
  factory $WeaponResponseCopyWith(
          WeaponResponse value, $Res Function(WeaponResponse) then) =
      _$WeaponResponseCopyWithImpl<$Res, WeaponResponse>;
  @useResult
  $Res call(
      {String uuid,
      String displayName,
      String? displayIcon,
      List<WeaponSkinResponse> skins});
}

/// @nodoc
class _$WeaponResponseCopyWithImpl<$Res, $Val extends WeaponResponse>
    implements $WeaponResponseCopyWith<$Res> {
  _$WeaponResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeaponResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? displayName = null,
    Object? displayIcon = freezed,
    Object? skins = null,
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
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      skins: null == skins
          ? _value.skins
          : skins // ignore: cast_nullable_to_non_nullable
              as List<WeaponSkinResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeaponResponseImplCopyWith<$Res>
    implements $WeaponResponseCopyWith<$Res> {
  factory _$$WeaponResponseImplCopyWith(_$WeaponResponseImpl value,
          $Res Function(_$WeaponResponseImpl) then) =
      __$$WeaponResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String displayName,
      String? displayIcon,
      List<WeaponSkinResponse> skins});
}

/// @nodoc
class __$$WeaponResponseImplCopyWithImpl<$Res>
    extends _$WeaponResponseCopyWithImpl<$Res, _$WeaponResponseImpl>
    implements _$$WeaponResponseImplCopyWith<$Res> {
  __$$WeaponResponseImplCopyWithImpl(
      _$WeaponResponseImpl _value, $Res Function(_$WeaponResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeaponResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? displayName = null,
    Object? displayIcon = freezed,
    Object? skins = null,
  }) {
    return _then(_$WeaponResponseImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      skins: null == skins
          ? _value._skins
          : skins // ignore: cast_nullable_to_non_nullable
              as List<WeaponSkinResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeaponResponseImpl implements _WeaponResponse {
  const _$WeaponResponseImpl(
      {required this.uuid,
      required this.displayName,
      this.displayIcon,
      final List<WeaponSkinResponse> skins = const []})
      : _skins = skins;

  factory _$WeaponResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeaponResponseImplFromJson(json);

  @override
  final String uuid;
  @override
  final String displayName;
  @override
  final String? displayIcon;
  final List<WeaponSkinResponse> _skins;
  @override
  @JsonKey()
  List<WeaponSkinResponse> get skins {
    if (_skins is EqualUnmodifiableListView) return _skins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skins);
  }

  @override
  String toString() {
    return 'WeaponResponse(uuid: $uuid, displayName: $displayName, displayIcon: $displayIcon, skins: $skins)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeaponResponseImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.displayIcon, displayIcon) ||
                other.displayIcon == displayIcon) &&
            const DeepCollectionEquality().equals(other._skins, _skins));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, displayName, displayIcon,
      const DeepCollectionEquality().hash(_skins));

  /// Create a copy of WeaponResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeaponResponseImplCopyWith<_$WeaponResponseImpl> get copyWith =>
      __$$WeaponResponseImplCopyWithImpl<_$WeaponResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeaponResponseImplToJson(
      this,
    );
  }
}

abstract class _WeaponResponse implements WeaponResponse {
  const factory _WeaponResponse(
      {required final String uuid,
      required final String displayName,
      final String? displayIcon,
      final List<WeaponSkinResponse> skins}) = _$WeaponResponseImpl;

  factory _WeaponResponse.fromJson(Map<String, dynamic> json) =
      _$WeaponResponseImpl.fromJson;

  @override
  String get uuid;
  @override
  String get displayName;
  @override
  String? get displayIcon;
  @override
  List<WeaponSkinResponse> get skins;

  /// Create a copy of WeaponResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeaponResponseImplCopyWith<_$WeaponResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
