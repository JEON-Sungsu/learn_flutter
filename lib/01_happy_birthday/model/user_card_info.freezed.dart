// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_card_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserCardInfo _$UserCardInfoFromJson(Map<String, dynamic> json) {
  return _UserCardInfo.fromJson(json);
}

/// @nodoc
mixin _$UserCardInfo {
  String get name => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get gitHub => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCardInfoCopyWith<UserCardInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCardInfoCopyWith<$Res> {
  factory $UserCardInfoCopyWith(
          UserCardInfo value, $Res Function(UserCardInfo) then) =
      _$UserCardInfoCopyWithImpl<$Res, UserCardInfo>;
  @useResult
  $Res call(
      {String name,
      String shortDescription,
      String imageUrl,
      String email,
      String phone,
      String gitHub});
}

/// @nodoc
class _$UserCardInfoCopyWithImpl<$Res, $Val extends UserCardInfo>
    implements $UserCardInfoCopyWith<$Res> {
  _$UserCardInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shortDescription = null,
    Object? imageUrl = null,
    Object? email = null,
    Object? phone = null,
    Object? gitHub = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      gitHub: null == gitHub
          ? _value.gitHub
          : gitHub // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCardInfoImplCopyWith<$Res>
    implements $UserCardInfoCopyWith<$Res> {
  factory _$$UserCardInfoImplCopyWith(
          _$UserCardInfoImpl value, $Res Function(_$UserCardInfoImpl) then) =
      __$$UserCardInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String shortDescription,
      String imageUrl,
      String email,
      String phone,
      String gitHub});
}

/// @nodoc
class __$$UserCardInfoImplCopyWithImpl<$Res>
    extends _$UserCardInfoCopyWithImpl<$Res, _$UserCardInfoImpl>
    implements _$$UserCardInfoImplCopyWith<$Res> {
  __$$UserCardInfoImplCopyWithImpl(
      _$UserCardInfoImpl _value, $Res Function(_$UserCardInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shortDescription = null,
    Object? imageUrl = null,
    Object? email = null,
    Object? phone = null,
    Object? gitHub = null,
  }) {
    return _then(_$UserCardInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      gitHub: null == gitHub
          ? _value.gitHub
          : gitHub // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCardInfoImpl with DiagnosticableTreeMixin implements _UserCardInfo {
  const _$UserCardInfoImpl(
      {required this.name,
      required this.shortDescription,
      required this.imageUrl,
      required this.email,
      required this.phone,
      required this.gitHub});

  factory _$UserCardInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCardInfoImplFromJson(json);

  @override
  final String name;
  @override
  final String shortDescription;
  @override
  final String imageUrl;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String gitHub;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserCardInfo(name: $name, shortDescription: $shortDescription, imageUrl: $imageUrl, email: $email, phone: $phone, gitHub: $gitHub)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserCardInfo'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('shortDescription', shortDescription))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('gitHub', gitHub));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCardInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gitHub, gitHub) || other.gitHub == gitHub));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, shortDescription, imageUrl, email, phone, gitHub);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCardInfoImplCopyWith<_$UserCardInfoImpl> get copyWith =>
      __$$UserCardInfoImplCopyWithImpl<_$UserCardInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCardInfoImplToJson(
      this,
    );
  }
}

abstract class _UserCardInfo implements UserCardInfo {
  const factory _UserCardInfo(
      {required final String name,
      required final String shortDescription,
      required final String imageUrl,
      required final String email,
      required final String phone,
      required final String gitHub}) = _$UserCardInfoImpl;

  factory _UserCardInfo.fromJson(Map<String, dynamic> json) =
      _$UserCardInfoImpl.fromJson;

  @override
  String get name;
  @override
  String get shortDescription;
  @override
  String get imageUrl;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get gitHub;
  @override
  @JsonKey(ignore: true)
  _$$UserCardInfoImplCopyWith<_$UserCardInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
