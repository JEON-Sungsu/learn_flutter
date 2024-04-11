// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImagePicture _$ImagePictureFromJson(Map<String, dynamic> json) {
  return _ImagePicture.fromJson(json);
}

/// @nodoc
mixin _$ImagePicture {
  num get id => throw _privateConstructorUsedError;
  String get tags => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagePictureCopyWith<ImagePicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagePictureCopyWith<$Res> {
  factory $ImagePictureCopyWith(
          ImagePicture value, $Res Function(ImagePicture) then) =
      _$ImagePictureCopyWithImpl<$Res, ImagePicture>;
  @useResult
  $Res call({num id, String tags, String url});
}

/// @nodoc
class _$ImagePictureCopyWithImpl<$Res, $Val extends ImagePicture>
    implements $ImagePictureCopyWith<$Res> {
  _$ImagePictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tags = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImagePictureImplCopyWith<$Res>
    implements $ImagePictureCopyWith<$Res> {
  factory _$$ImagePictureImplCopyWith(
          _$ImagePictureImpl value, $Res Function(_$ImagePictureImpl) then) =
      __$$ImagePictureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num id, String tags, String url});
}

/// @nodoc
class __$$ImagePictureImplCopyWithImpl<$Res>
    extends _$ImagePictureCopyWithImpl<$Res, _$ImagePictureImpl>
    implements _$$ImagePictureImplCopyWith<$Res> {
  __$$ImagePictureImplCopyWithImpl(
      _$ImagePictureImpl _value, $Res Function(_$ImagePictureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tags = null,
    Object? url = null,
  }) {
    return _then(_$ImagePictureImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagePictureImpl implements _ImagePicture {
  const _$ImagePictureImpl(
      {required this.id, required this.tags, required this.url});

  factory _$ImagePictureImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagePictureImplFromJson(json);

  @override
  final num id;
  @override
  final String tags;
  @override
  final String url;

  @override
  String toString() {
    return 'ImagePicture(id: $id, tags: $tags, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagePictureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, tags, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagePictureImplCopyWith<_$ImagePictureImpl> get copyWith =>
      __$$ImagePictureImplCopyWithImpl<_$ImagePictureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagePictureImplToJson(
      this,
    );
  }
}

abstract class _ImagePicture implements ImagePicture {
  const factory _ImagePicture(
      {required final num id,
      required final String tags,
      required final String url}) = _$ImagePictureImpl;

  factory _ImagePicture.fromJson(Map<String, dynamic> json) =
      _$ImagePictureImpl.fromJson;

  @override
  num get id;
  @override
  String get tags;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$ImagePictureImplCopyWith<_$ImagePictureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
