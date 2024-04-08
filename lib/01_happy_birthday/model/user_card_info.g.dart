// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_card_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserCardInfoImpl _$$UserCardInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserCardInfoImpl(
      name: json['name'] as String,
      shortDescription: json['shortDescription'] as String,
      imageUrl: json['imageUrl'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      gitHub: json['gitHub'] as String,
    );

Map<String, dynamic> _$$UserCardInfoImplToJson(_$UserCardInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'shortDescription': instance.shortDescription,
      'imageUrl': instance.imageUrl,
      'email': instance.email,
      'phone': instance.phone,
      'gitHub': instance.gitHub,
    };
