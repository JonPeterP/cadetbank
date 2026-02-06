// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CollectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<WeaponResponse> weapons,
            List<SprayResponse> sprays,
            List<PlayerCardResponse> playerCards,
            Map<String, dynamic> selectedWeaponSkins,
            PlayerCardResponse? selectedPlayerCard,
            Map<int, SprayResponse> selectedSprays)
        loaded,
    required TResult Function(String errorMessage) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<WeaponResponse> weapons,
            List<SprayResponse> sprays,
            List<PlayerCardResponse> playerCards,
            Map<String, dynamic> selectedWeaponSkins,
            PlayerCardResponse? selectedPlayerCard,
            Map<int, SprayResponse> selectedSprays)?
        loaded,
    TResult? Function(String errorMessage)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<WeaponResponse> weapons,
            List<SprayResponse> sprays,
            List<PlayerCardResponse> playerCards,
            Map<String, dynamic> selectedWeaponSkins,
            PlayerCardResponse? selectedPlayerCard,
            Map<int, SprayResponse> selectedSprays)?
        loaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionStateCopyWith<$Res> {
  factory $CollectionStateCopyWith(
          CollectionState value, $Res Function(CollectionState) then) =
      _$CollectionStateCopyWithImpl<$Res, CollectionState>;
}

/// @nodoc
class _$CollectionStateCopyWithImpl<$Res, $Val extends CollectionState>
    implements $CollectionStateCopyWith<$Res> {
  _$CollectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CollectionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CollectionState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<WeaponResponse> weapons,
            List<SprayResponse> sprays,
            List<PlayerCardResponse> playerCards,
            Map<String, dynamic> selectedWeaponSkins,
            PlayerCardResponse? selectedPlayerCard,
            Map<int, SprayResponse> selectedSprays)
        loaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<WeaponResponse> weapons,
            List<SprayResponse> sprays,
            List<PlayerCardResponse> playerCards,
            Map<String, dynamic> selectedWeaponSkins,
            PlayerCardResponse? selectedPlayerCard,
            Map<int, SprayResponse> selectedSprays)?
        loaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<WeaponResponse> weapons,
            List<SprayResponse> sprays,
            List<PlayerCardResponse> playerCards,
            Map<String, dynamic> selectedWeaponSkins,
            PlayerCardResponse? selectedPlayerCard,
            Map<int, SprayResponse> selectedSprays)?
        loaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CollectionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CollectionStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CollectionState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<WeaponResponse> weapons,
            List<SprayResponse> sprays,
            List<PlayerCardResponse> playerCards,
            Map<String, dynamic> selectedWeaponSkins,
            PlayerCardResponse? selectedPlayerCard,
            Map<int, SprayResponse> selectedSprays)
        loaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<WeaponResponse> weapons,
            List<SprayResponse> sprays,
            List<PlayerCardResponse> playerCards,
            Map<String, dynamic> selectedWeaponSkins,
            PlayerCardResponse? selectedPlayerCard,
            Map<int, SprayResponse> selectedSprays)?
        loaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<WeaponResponse> weapons,
            List<SprayResponse> sprays,
            List<PlayerCardResponse> playerCards,
            Map<String, dynamic> selectedWeaponSkins,
            PlayerCardResponse? selectedPlayerCard,
            Map<int, SprayResponse> selectedSprays)?
        loaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CollectionState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<WeaponResponse> weapons,
      List<SprayResponse> sprays,
      List<PlayerCardResponse> playerCards,
      Map<String, dynamic> selectedWeaponSkins,
      PlayerCardResponse? selectedPlayerCard,
      Map<int, SprayResponse> selectedSprays});

  $PlayerCardResponseCopyWith<$Res>? get selectedPlayerCard;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CollectionStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weapons = null,
    Object? sprays = null,
    Object? playerCards = null,
    Object? selectedWeaponSkins = null,
    Object? selectedPlayerCard = freezed,
    Object? selectedSprays = null,
  }) {
    return _then(_$LoadedImpl(
      weapons: null == weapons
          ? _value._weapons
          : weapons // ignore: cast_nullable_to_non_nullable
              as List<WeaponResponse>,
      sprays: null == sprays
          ? _value._sprays
          : sprays // ignore: cast_nullable_to_non_nullable
              as List<SprayResponse>,
      playerCards: null == playerCards
          ? _value._playerCards
          : playerCards // ignore: cast_nullable_to_non_nullable
              as List<PlayerCardResponse>,
      selectedWeaponSkins: null == selectedWeaponSkins
          ? _value._selectedWeaponSkins
          : selectedWeaponSkins // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      selectedPlayerCard: freezed == selectedPlayerCard
          ? _value.selectedPlayerCard
          : selectedPlayerCard // ignore: cast_nullable_to_non_nullable
              as PlayerCardResponse?,
      selectedSprays: null == selectedSprays
          ? _value._selectedSprays
          : selectedSprays // ignore: cast_nullable_to_non_nullable
              as Map<int, SprayResponse>,
    ));
  }

  /// Create a copy of CollectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayerCardResponseCopyWith<$Res>? get selectedPlayerCard {
    if (_value.selectedPlayerCard == null) {
      return null;
    }

    return $PlayerCardResponseCopyWith<$Res>(_value.selectedPlayerCard!,
        (value) {
      return _then(_value.copyWith(selectedPlayerCard: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required final List<WeaponResponse> weapons,
      required final List<SprayResponse> sprays,
      required final List<PlayerCardResponse> playerCards,
      final Map<String, dynamic> selectedWeaponSkins = const {},
      this.selectedPlayerCard,
      final Map<int, SprayResponse> selectedSprays = const {}})
      : _weapons = weapons,
        _sprays = sprays,
        _playerCards = playerCards,
        _selectedWeaponSkins = selectedWeaponSkins,
        _selectedSprays = selectedSprays;

  final List<WeaponResponse> _weapons;
  @override
  List<WeaponResponse> get weapons {
    if (_weapons is EqualUnmodifiableListView) return _weapons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weapons);
  }

  final List<SprayResponse> _sprays;
  @override
  List<SprayResponse> get sprays {
    if (_sprays is EqualUnmodifiableListView) return _sprays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sprays);
  }

  final List<PlayerCardResponse> _playerCards;
  @override
  List<PlayerCardResponse> get playerCards {
    if (_playerCards is EqualUnmodifiableListView) return _playerCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playerCards);
  }

  final Map<String, dynamic> _selectedWeaponSkins;
  @override
  @JsonKey()
  Map<String, dynamic> get selectedWeaponSkins {
    if (_selectedWeaponSkins is EqualUnmodifiableMapView)
      return _selectedWeaponSkins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedWeaponSkins);
  }

  @override
  final PlayerCardResponse? selectedPlayerCard;
  final Map<int, SprayResponse> _selectedSprays;
  @override
  @JsonKey()
  Map<int, SprayResponse> get selectedSprays {
    if (_selectedSprays is EqualUnmodifiableMapView) return _selectedSprays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedSprays);
  }

  @override
  String toString() {
    return 'CollectionState.loaded(weapons: $weapons, sprays: $sprays, playerCards: $playerCards, selectedWeaponSkins: $selectedWeaponSkins, selectedPlayerCard: $selectedPlayerCard, selectedSprays: $selectedSprays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._weapons, _weapons) &&
            const DeepCollectionEquality().equals(other._sprays, _sprays) &&
            const DeepCollectionEquality()
                .equals(other._playerCards, _playerCards) &&
            const DeepCollectionEquality()
                .equals(other._selectedWeaponSkins, _selectedWeaponSkins) &&
            (identical(other.selectedPlayerCard, selectedPlayerCard) ||
                other.selectedPlayerCard == selectedPlayerCard) &&
            const DeepCollectionEquality()
                .equals(other._selectedSprays, _selectedSprays));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_weapons),
      const DeepCollectionEquality().hash(_sprays),
      const DeepCollectionEquality().hash(_playerCards),
      const DeepCollectionEquality().hash(_selectedWeaponSkins),
      selectedPlayerCard,
      const DeepCollectionEquality().hash(_selectedSprays));

  /// Create a copy of CollectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<WeaponResponse> weapons,
            List<SprayResponse> sprays,
            List<PlayerCardResponse> playerCards,
            Map<String, dynamic> selectedWeaponSkins,
            PlayerCardResponse? selectedPlayerCard,
            Map<int, SprayResponse> selectedSprays)
        loaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return loaded(weapons, sprays, playerCards, selectedWeaponSkins,
        selectedPlayerCard, selectedSprays);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<WeaponResponse> weapons,
            List<SprayResponse> sprays,
            List<PlayerCardResponse> playerCards,
            Map<String, dynamic> selectedWeaponSkins,
            PlayerCardResponse? selectedPlayerCard,
            Map<int, SprayResponse> selectedSprays)?
        loaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return loaded?.call(weapons, sprays, playerCards, selectedWeaponSkins,
        selectedPlayerCard, selectedSprays);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<WeaponResponse> weapons,
            List<SprayResponse> sprays,
            List<PlayerCardResponse> playerCards,
            Map<String, dynamic> selectedWeaponSkins,
            PlayerCardResponse? selectedPlayerCard,
            Map<int, SprayResponse> selectedSprays)?
        loaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(weapons, sprays, playerCards, selectedWeaponSkins,
          selectedPlayerCard, selectedSprays);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CollectionState {
  const factory _Loaded(
      {required final List<WeaponResponse> weapons,
      required final List<SprayResponse> sprays,
      required final List<PlayerCardResponse> playerCards,
      final Map<String, dynamic> selectedWeaponSkins,
      final PlayerCardResponse? selectedPlayerCard,
      final Map<int, SprayResponse> selectedSprays}) = _$LoadedImpl;

  List<WeaponResponse> get weapons;
  List<SprayResponse> get sprays;
  List<PlayerCardResponse> get playerCards;
  Map<String, dynamic> get selectedWeaponSkins;
  PlayerCardResponse? get selectedPlayerCard;
  Map<int, SprayResponse> get selectedSprays;

  /// Create a copy of CollectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$CollectionStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FailedImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CollectionState.failed(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of CollectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<WeaponResponse> weapons,
            List<SprayResponse> sprays,
            List<PlayerCardResponse> playerCards,
            Map<String, dynamic> selectedWeaponSkins,
            PlayerCardResponse? selectedPlayerCard,
            Map<int, SprayResponse> selectedSprays)
        loaded,
    required TResult Function(String errorMessage) failed,
  }) {
    return failed(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<WeaponResponse> weapons,
            List<SprayResponse> sprays,
            List<PlayerCardResponse> playerCards,
            Map<String, dynamic> selectedWeaponSkins,
            PlayerCardResponse? selectedPlayerCard,
            Map<int, SprayResponse> selectedSprays)?
        loaded,
    TResult? Function(String errorMessage)? failed,
  }) {
    return failed?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<WeaponResponse> weapons,
            List<SprayResponse> sprays,
            List<PlayerCardResponse> playerCards,
            Map<String, dynamic> selectedWeaponSkins,
            PlayerCardResponse? selectedPlayerCard,
            Map<int, SprayResponse> selectedSprays)?
        loaded,
    TResult Function(String errorMessage)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements CollectionState {
  const factory _Failed(final String errorMessage) = _$FailedImpl;

  String get errorMessage;

  /// Create a copy of CollectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
