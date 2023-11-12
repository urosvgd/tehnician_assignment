// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormScreenState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  FullName get fullName => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  List<Tier> get tiers => throw _privateConstructorUsedError;
  Tier get selectedTier => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  bool get isTierYearly => throw _privateConstructorUsedError;
  int get currentFormStep => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormScreenStateCopyWith<FormScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormScreenStateCopyWith<$Res> {
  factory $FormScreenStateCopyWith(
          FormScreenState value, $Res Function(FormScreenState) then) =
      _$FormScreenStateCopyWithImpl<$Res, FormScreenState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      FullName fullName,
      PhoneNumber phoneNumber,
      List<Tier> tiers,
      Tier selectedTier,
      DateTime date,
      bool isTierYearly,
      int currentFormStep});
}

/// @nodoc
class _$FormScreenStateCopyWithImpl<$Res, $Val extends FormScreenState>
    implements $FormScreenStateCopyWith<$Res> {
  _$FormScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? tiers = null,
    Object? selectedTier = null,
    Object? date = null,
    Object? isTierYearly = null,
    Object? currentFormStep = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      tiers: null == tiers
          ? _value.tiers
          : tiers // ignore: cast_nullable_to_non_nullable
              as List<Tier>,
      selectedTier: null == selectedTier
          ? _value.selectedTier
          : selectedTier // ignore: cast_nullable_to_non_nullable
              as Tier,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isTierYearly: null == isTierYearly
          ? _value.isTierYearly
          : isTierYearly // ignore: cast_nullable_to_non_nullable
              as bool,
      currentFormStep: null == currentFormStep
          ? _value.currentFormStep
          : currentFormStep // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormScreenStateImplCopyWith<$Res>
    implements $FormScreenStateCopyWith<$Res> {
  factory _$$FormScreenStateImplCopyWith(_$FormScreenStateImpl value,
          $Res Function(_$FormScreenStateImpl) then) =
      __$$FormScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      FullName fullName,
      PhoneNumber phoneNumber,
      List<Tier> tiers,
      Tier selectedTier,
      DateTime date,
      bool isTierYearly,
      int currentFormStep});
}

/// @nodoc
class __$$FormScreenStateImplCopyWithImpl<$Res>
    extends _$FormScreenStateCopyWithImpl<$Res, _$FormScreenStateImpl>
    implements _$$FormScreenStateImplCopyWith<$Res> {
  __$$FormScreenStateImplCopyWithImpl(
      _$FormScreenStateImpl _value, $Res Function(_$FormScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? tiers = null,
    Object? selectedTier = null,
    Object? date = null,
    Object? isTierYearly = null,
    Object? currentFormStep = null,
  }) {
    return _then(_$FormScreenStateImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      tiers: null == tiers
          ? _value._tiers
          : tiers // ignore: cast_nullable_to_non_nullable
              as List<Tier>,
      selectedTier: null == selectedTier
          ? _value.selectedTier
          : selectedTier // ignore: cast_nullable_to_non_nullable
              as Tier,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isTierYearly: null == isTierYearly
          ? _value.isTierYearly
          : isTierYearly // ignore: cast_nullable_to_non_nullable
              as bool,
      currentFormStep: null == currentFormStep
          ? _value.currentFormStep
          : currentFormStep // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FormScreenStateImpl implements _FormScreenState {
  const _$FormScreenStateImpl(
      {required this.emailAddress,
      required this.fullName,
      required this.phoneNumber,
      required final List<Tier> tiers,
      required this.selectedTier,
      required this.date,
      this.isTierYearly = false,
      this.currentFormStep = 0})
      : _tiers = tiers;

  @override
  final EmailAddress emailAddress;
  @override
  final FullName fullName;
  @override
  final PhoneNumber phoneNumber;
  final List<Tier> _tiers;
  @override
  List<Tier> get tiers {
    if (_tiers is EqualUnmodifiableListView) return _tiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tiers);
  }

  @override
  final Tier selectedTier;
  @override
  final DateTime date;
  @override
  @JsonKey()
  final bool isTierYearly;
  @override
  @JsonKey()
  final int currentFormStep;

  @override
  String toString() {
    return 'FormScreenState(emailAddress: $emailAddress, fullName: $fullName, phoneNumber: $phoneNumber, tiers: $tiers, selectedTier: $selectedTier, date: $date, isTierYearly: $isTierYearly, currentFormStep: $currentFormStep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormScreenStateImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality().equals(other._tiers, _tiers) &&
            (identical(other.selectedTier, selectedTier) ||
                other.selectedTier == selectedTier) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isTierYearly, isTierYearly) ||
                other.isTierYearly == isTierYearly) &&
            (identical(other.currentFormStep, currentFormStep) ||
                other.currentFormStep == currentFormStep));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      emailAddress,
      fullName,
      phoneNumber,
      const DeepCollectionEquality().hash(_tiers),
      selectedTier,
      date,
      isTierYearly,
      currentFormStep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormScreenStateImplCopyWith<_$FormScreenStateImpl> get copyWith =>
      __$$FormScreenStateImplCopyWithImpl<_$FormScreenStateImpl>(
          this, _$identity);
}

abstract class _FormScreenState implements FormScreenState {
  const factory _FormScreenState(
      {required final EmailAddress emailAddress,
      required final FullName fullName,
      required final PhoneNumber phoneNumber,
      required final List<Tier> tiers,
      required final Tier selectedTier,
      required final DateTime date,
      final bool isTierYearly,
      final int currentFormStep}) = _$FormScreenStateImpl;

  @override
  EmailAddress get emailAddress;
  @override
  FullName get fullName;
  @override
  PhoneNumber get phoneNumber;
  @override
  List<Tier> get tiers;
  @override
  Tier get selectedTier;
  @override
  DateTime get date;
  @override
  bool get isTierYearly;
  @override
  int get currentFormStep;
  @override
  @JsonKey(ignore: true)
  _$$FormScreenStateImplCopyWith<_$FormScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FormScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(Tier tier) selectTier,
    required TResult Function(bool isYearly) setYearly,
    required TResult Function() onNextClick,
    required TResult Function() onBackClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(Tier tier)? selectTier,
    TResult? Function(bool isYearly)? setYearly,
    TResult? Function()? onNextClick,
    TResult? Function()? onBackClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(Tier tier)? selectTier,
    TResult Function(bool isYearly)? setYearly,
    TResult Function()? onNextClick,
    TResult Function()? onBackClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SelectTier value) selectTier,
    required TResult Function(_SetYearly value) setYearly,
    required TResult Function(_OnNextClick value) onNextClick,
    required TResult Function(_OnBackClick value) onBackClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_SelectTier value)? selectTier,
    TResult? Function(_SetYearly value)? setYearly,
    TResult? Function(_OnNextClick value)? onNextClick,
    TResult? Function(_OnBackClick value)? onBackClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SelectTier value)? selectTier,
    TResult Function(_SetYearly value)? setYearly,
    TResult Function(_OnNextClick value)? onNextClick,
    TResult Function(_OnBackClick value)? onBackClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormScreenEventCopyWith<$Res> {
  factory $FormScreenEventCopyWith(
          FormScreenEvent value, $Res Function(FormScreenEvent) then) =
      _$FormScreenEventCopyWithImpl<$Res, FormScreenEvent>;
}

/// @nodoc
class _$FormScreenEventCopyWithImpl<$Res, $Val extends FormScreenEvent>
    implements $FormScreenEventCopyWith<$Res> {
  _$FormScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$FormScreenEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements _EmailChanged {
  const _$EmailChangedImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'FormScreenEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(Tier tier) selectTier,
    required TResult Function(bool isYearly) setYearly,
    required TResult Function() onNextClick,
    required TResult Function() onBackClick,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(Tier tier)? selectTier,
    TResult? Function(bool isYearly)? setYearly,
    TResult? Function()? onNextClick,
    TResult? Function()? onBackClick,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(Tier tier)? selectTier,
    TResult Function(bool isYearly)? setYearly,
    TResult Function()? onNextClick,
    TResult Function()? onBackClick,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SelectTier value) selectTier,
    required TResult Function(_SetYearly value) setYearly,
    required TResult Function(_OnNextClick value) onNextClick,
    required TResult Function(_OnBackClick value) onBackClick,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_SelectTier value)? selectTier,
    TResult? Function(_SetYearly value)? setYearly,
    TResult? Function(_OnNextClick value)? onNextClick,
    TResult? Function(_OnBackClick value)? onBackClick,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SelectTier value)? selectTier,
    TResult Function(_SetYearly value)? setYearly,
    TResult Function(_OnNextClick value)? onNextClick,
    TResult Function(_OnBackClick value)? onBackClick,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements FormScreenEvent {
  const factory _EmailChanged({required final String email}) =
      _$EmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FullNameChangedImplCopyWith<$Res> {
  factory _$$FullNameChangedImplCopyWith(_$FullNameChangedImpl value,
          $Res Function(_$FullNameChangedImpl) then) =
      __$$FullNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fullName});
}

/// @nodoc
class __$$FullNameChangedImplCopyWithImpl<$Res>
    extends _$FormScreenEventCopyWithImpl<$Res, _$FullNameChangedImpl>
    implements _$$FullNameChangedImplCopyWith<$Res> {
  __$$FullNameChangedImplCopyWithImpl(
      _$FullNameChangedImpl _value, $Res Function(_$FullNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
  }) {
    return _then(_$FullNameChangedImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FullNameChangedImpl implements _FullNameChanged {
  const _$FullNameChangedImpl({required this.fullName});

  @override
  final String fullName;

  @override
  String toString() {
    return 'FormScreenEvent.fullNameChanged(fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FullNameChangedImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FullNameChangedImplCopyWith<_$FullNameChangedImpl> get copyWith =>
      __$$FullNameChangedImplCopyWithImpl<_$FullNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(Tier tier) selectTier,
    required TResult Function(bool isYearly) setYearly,
    required TResult Function() onNextClick,
    required TResult Function() onBackClick,
  }) {
    return fullNameChanged(fullName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(Tier tier)? selectTier,
    TResult? Function(bool isYearly)? setYearly,
    TResult? Function()? onNextClick,
    TResult? Function()? onBackClick,
  }) {
    return fullNameChanged?.call(fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(Tier tier)? selectTier,
    TResult Function(bool isYearly)? setYearly,
    TResult Function()? onNextClick,
    TResult Function()? onBackClick,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SelectTier value) selectTier,
    required TResult Function(_SetYearly value) setYearly,
    required TResult Function(_OnNextClick value) onNextClick,
    required TResult Function(_OnBackClick value) onBackClick,
  }) {
    return fullNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_SelectTier value)? selectTier,
    TResult? Function(_SetYearly value)? setYearly,
    TResult? Function(_OnNextClick value)? onNextClick,
    TResult? Function(_OnBackClick value)? onBackClick,
  }) {
    return fullNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SelectTier value)? selectTier,
    TResult Function(_SetYearly value)? setYearly,
    TResult Function(_OnNextClick value)? onNextClick,
    TResult Function(_OnBackClick value)? onBackClick,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FullNameChanged implements FormScreenEvent {
  const factory _FullNameChanged({required final String fullName}) =
      _$FullNameChangedImpl;

  String get fullName;
  @JsonKey(ignore: true)
  _$$FullNameChangedImplCopyWith<_$FullNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneNumberChangedImplCopyWith<$Res> {
  factory _$$PhoneNumberChangedImplCopyWith(_$PhoneNumberChangedImpl value,
          $Res Function(_$PhoneNumberChangedImpl) then) =
      __$$PhoneNumberChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PhoneNumberChangedImplCopyWithImpl<$Res>
    extends _$FormScreenEventCopyWithImpl<$Res, _$PhoneNumberChangedImpl>
    implements _$$PhoneNumberChangedImplCopyWith<$Res> {
  __$$PhoneNumberChangedImplCopyWithImpl(_$PhoneNumberChangedImpl _value,
      $Res Function(_$PhoneNumberChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PhoneNumberChangedImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChangedImpl implements _PhoneNumberChanged {
  const _$PhoneNumberChangedImpl({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'FormScreenEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberChangedImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberChangedImplCopyWith<_$PhoneNumberChangedImpl> get copyWith =>
      __$$PhoneNumberChangedImplCopyWithImpl<_$PhoneNumberChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(Tier tier) selectTier,
    required TResult Function(bool isYearly) setYearly,
    required TResult Function() onNextClick,
    required TResult Function() onBackClick,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(Tier tier)? selectTier,
    TResult? Function(bool isYearly)? setYearly,
    TResult? Function()? onNextClick,
    TResult? Function()? onBackClick,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(Tier tier)? selectTier,
    TResult Function(bool isYearly)? setYearly,
    TResult Function()? onNextClick,
    TResult Function()? onBackClick,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SelectTier value) selectTier,
    required TResult Function(_SetYearly value) setYearly,
    required TResult Function(_OnNextClick value) onNextClick,
    required TResult Function(_OnBackClick value) onBackClick,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_SelectTier value)? selectTier,
    TResult? Function(_SetYearly value)? setYearly,
    TResult? Function(_OnNextClick value)? onNextClick,
    TResult? Function(_OnBackClick value)? onBackClick,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SelectTier value)? selectTier,
    TResult Function(_SetYearly value)? setYearly,
    TResult Function(_OnNextClick value)? onNextClick,
    TResult Function(_OnBackClick value)? onBackClick,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements FormScreenEvent {
  const factory _PhoneNumberChanged({required final String phoneNumber}) =
      _$PhoneNumberChangedImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$PhoneNumberChangedImplCopyWith<_$PhoneNumberChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectTierImplCopyWith<$Res> {
  factory _$$SelectTierImplCopyWith(
          _$SelectTierImpl value, $Res Function(_$SelectTierImpl) then) =
      __$$SelectTierImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Tier tier});
}

/// @nodoc
class __$$SelectTierImplCopyWithImpl<$Res>
    extends _$FormScreenEventCopyWithImpl<$Res, _$SelectTierImpl>
    implements _$$SelectTierImplCopyWith<$Res> {
  __$$SelectTierImplCopyWithImpl(
      _$SelectTierImpl _value, $Res Function(_$SelectTierImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tier = null,
  }) {
    return _then(_$SelectTierImpl(
      tier: null == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as Tier,
    ));
  }
}

/// @nodoc

class _$SelectTierImpl implements _SelectTier {
  const _$SelectTierImpl({required this.tier});

  @override
  final Tier tier;

  @override
  String toString() {
    return 'FormScreenEvent.selectTier(tier: $tier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTierImpl &&
            (identical(other.tier, tier) || other.tier == tier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTierImplCopyWith<_$SelectTierImpl> get copyWith =>
      __$$SelectTierImplCopyWithImpl<_$SelectTierImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(Tier tier) selectTier,
    required TResult Function(bool isYearly) setYearly,
    required TResult Function() onNextClick,
    required TResult Function() onBackClick,
  }) {
    return selectTier(tier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(Tier tier)? selectTier,
    TResult? Function(bool isYearly)? setYearly,
    TResult? Function()? onNextClick,
    TResult? Function()? onBackClick,
  }) {
    return selectTier?.call(tier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(Tier tier)? selectTier,
    TResult Function(bool isYearly)? setYearly,
    TResult Function()? onNextClick,
    TResult Function()? onBackClick,
    required TResult orElse(),
  }) {
    if (selectTier != null) {
      return selectTier(tier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SelectTier value) selectTier,
    required TResult Function(_SetYearly value) setYearly,
    required TResult Function(_OnNextClick value) onNextClick,
    required TResult Function(_OnBackClick value) onBackClick,
  }) {
    return selectTier(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_SelectTier value)? selectTier,
    TResult? Function(_SetYearly value)? setYearly,
    TResult? Function(_OnNextClick value)? onNextClick,
    TResult? Function(_OnBackClick value)? onBackClick,
  }) {
    return selectTier?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SelectTier value)? selectTier,
    TResult Function(_SetYearly value)? setYearly,
    TResult Function(_OnNextClick value)? onNextClick,
    TResult Function(_OnBackClick value)? onBackClick,
    required TResult orElse(),
  }) {
    if (selectTier != null) {
      return selectTier(this);
    }
    return orElse();
  }
}

abstract class _SelectTier implements FormScreenEvent {
  const factory _SelectTier({required final Tier tier}) = _$SelectTierImpl;

  Tier get tier;
  @JsonKey(ignore: true)
  _$$SelectTierImplCopyWith<_$SelectTierImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetYearlyImplCopyWith<$Res> {
  factory _$$SetYearlyImplCopyWith(
          _$SetYearlyImpl value, $Res Function(_$SetYearlyImpl) then) =
      __$$SetYearlyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isYearly});
}

/// @nodoc
class __$$SetYearlyImplCopyWithImpl<$Res>
    extends _$FormScreenEventCopyWithImpl<$Res, _$SetYearlyImpl>
    implements _$$SetYearlyImplCopyWith<$Res> {
  __$$SetYearlyImplCopyWithImpl(
      _$SetYearlyImpl _value, $Res Function(_$SetYearlyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isYearly = null,
  }) {
    return _then(_$SetYearlyImpl(
      isYearly: null == isYearly
          ? _value.isYearly
          : isYearly // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetYearlyImpl implements _SetYearly {
  const _$SetYearlyImpl({required this.isYearly});

  @override
  final bool isYearly;

  @override
  String toString() {
    return 'FormScreenEvent.setYearly(isYearly: $isYearly)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetYearlyImpl &&
            (identical(other.isYearly, isYearly) ||
                other.isYearly == isYearly));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isYearly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetYearlyImplCopyWith<_$SetYearlyImpl> get copyWith =>
      __$$SetYearlyImplCopyWithImpl<_$SetYearlyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(Tier tier) selectTier,
    required TResult Function(bool isYearly) setYearly,
    required TResult Function() onNextClick,
    required TResult Function() onBackClick,
  }) {
    return setYearly(isYearly);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(Tier tier)? selectTier,
    TResult? Function(bool isYearly)? setYearly,
    TResult? Function()? onNextClick,
    TResult? Function()? onBackClick,
  }) {
    return setYearly?.call(isYearly);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(Tier tier)? selectTier,
    TResult Function(bool isYearly)? setYearly,
    TResult Function()? onNextClick,
    TResult Function()? onBackClick,
    required TResult orElse(),
  }) {
    if (setYearly != null) {
      return setYearly(isYearly);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SelectTier value) selectTier,
    required TResult Function(_SetYearly value) setYearly,
    required TResult Function(_OnNextClick value) onNextClick,
    required TResult Function(_OnBackClick value) onBackClick,
  }) {
    return setYearly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_SelectTier value)? selectTier,
    TResult? Function(_SetYearly value)? setYearly,
    TResult? Function(_OnNextClick value)? onNextClick,
    TResult? Function(_OnBackClick value)? onBackClick,
  }) {
    return setYearly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SelectTier value)? selectTier,
    TResult Function(_SetYearly value)? setYearly,
    TResult Function(_OnNextClick value)? onNextClick,
    TResult Function(_OnBackClick value)? onBackClick,
    required TResult orElse(),
  }) {
    if (setYearly != null) {
      return setYearly(this);
    }
    return orElse();
  }
}

abstract class _SetYearly implements FormScreenEvent {
  const factory _SetYearly({required final bool isYearly}) = _$SetYearlyImpl;

  bool get isYearly;
  @JsonKey(ignore: true)
  _$$SetYearlyImplCopyWith<_$SetYearlyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnNextClickImplCopyWith<$Res> {
  factory _$$OnNextClickImplCopyWith(
          _$OnNextClickImpl value, $Res Function(_$OnNextClickImpl) then) =
      __$$OnNextClickImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnNextClickImplCopyWithImpl<$Res>
    extends _$FormScreenEventCopyWithImpl<$Res, _$OnNextClickImpl>
    implements _$$OnNextClickImplCopyWith<$Res> {
  __$$OnNextClickImplCopyWithImpl(
      _$OnNextClickImpl _value, $Res Function(_$OnNextClickImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnNextClickImpl implements _OnNextClick {
  const _$OnNextClickImpl();

  @override
  String toString() {
    return 'FormScreenEvent.onNextClick()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnNextClickImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(Tier tier) selectTier,
    required TResult Function(bool isYearly) setYearly,
    required TResult Function() onNextClick,
    required TResult Function() onBackClick,
  }) {
    return onNextClick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(Tier tier)? selectTier,
    TResult? Function(bool isYearly)? setYearly,
    TResult? Function()? onNextClick,
    TResult? Function()? onBackClick,
  }) {
    return onNextClick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(Tier tier)? selectTier,
    TResult Function(bool isYearly)? setYearly,
    TResult Function()? onNextClick,
    TResult Function()? onBackClick,
    required TResult orElse(),
  }) {
    if (onNextClick != null) {
      return onNextClick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SelectTier value) selectTier,
    required TResult Function(_SetYearly value) setYearly,
    required TResult Function(_OnNextClick value) onNextClick,
    required TResult Function(_OnBackClick value) onBackClick,
  }) {
    return onNextClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_SelectTier value)? selectTier,
    TResult? Function(_SetYearly value)? setYearly,
    TResult? Function(_OnNextClick value)? onNextClick,
    TResult? Function(_OnBackClick value)? onBackClick,
  }) {
    return onNextClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SelectTier value)? selectTier,
    TResult Function(_SetYearly value)? setYearly,
    TResult Function(_OnNextClick value)? onNextClick,
    TResult Function(_OnBackClick value)? onBackClick,
    required TResult orElse(),
  }) {
    if (onNextClick != null) {
      return onNextClick(this);
    }
    return orElse();
  }
}

abstract class _OnNextClick implements FormScreenEvent {
  const factory _OnNextClick() = _$OnNextClickImpl;
}

/// @nodoc
abstract class _$$OnBackClickImplCopyWith<$Res> {
  factory _$$OnBackClickImplCopyWith(
          _$OnBackClickImpl value, $Res Function(_$OnBackClickImpl) then) =
      __$$OnBackClickImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnBackClickImplCopyWithImpl<$Res>
    extends _$FormScreenEventCopyWithImpl<$Res, _$OnBackClickImpl>
    implements _$$OnBackClickImplCopyWith<$Res> {
  __$$OnBackClickImplCopyWithImpl(
      _$OnBackClickImpl _value, $Res Function(_$OnBackClickImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnBackClickImpl implements _OnBackClick {
  const _$OnBackClickImpl();

  @override
  String toString() {
    return 'FormScreenEvent.onBackClick()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnBackClickImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(Tier tier) selectTier,
    required TResult Function(bool isYearly) setYearly,
    required TResult Function() onNextClick,
    required TResult Function() onBackClick,
  }) {
    return onBackClick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(Tier tier)? selectTier,
    TResult? Function(bool isYearly)? setYearly,
    TResult? Function()? onNextClick,
    TResult? Function()? onBackClick,
  }) {
    return onBackClick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(Tier tier)? selectTier,
    TResult Function(bool isYearly)? setYearly,
    TResult Function()? onNextClick,
    TResult Function()? onBackClick,
    required TResult orElse(),
  }) {
    if (onBackClick != null) {
      return onBackClick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SelectTier value) selectTier,
    required TResult Function(_SetYearly value) setYearly,
    required TResult Function(_OnNextClick value) onNextClick,
    required TResult Function(_OnBackClick value) onBackClick,
  }) {
    return onBackClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_SelectTier value)? selectTier,
    TResult? Function(_SetYearly value)? setYearly,
    TResult? Function(_OnNextClick value)? onNextClick,
    TResult? Function(_OnBackClick value)? onBackClick,
  }) {
    return onBackClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SelectTier value)? selectTier,
    TResult Function(_SetYearly value)? setYearly,
    TResult Function(_OnNextClick value)? onNextClick,
    TResult Function(_OnBackClick value)? onBackClick,
    required TResult orElse(),
  }) {
    if (onBackClick != null) {
      return onBackClick(this);
    }
    return orElse();
  }
}

abstract class _OnBackClick implements FormScreenEvent {
  const factory _OnBackClick() = _$OnBackClickImpl;
}
