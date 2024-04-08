import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'user_card_info.freezed.dart';
part 'user_card_info.g.dart';

@freezed
class UserCardInfo with _$UserCardInfo {
  const factory UserCardInfo({
    required String name,
    required String shortDescription,
    required String imageUrl,
    required String email,
    required String phone,
    required String gitHub,
  }) = _UserCardInfo;

  factory UserCardInfo.fromJson(Map<String, Object?> json) => _$UserCardInfoFromJson(json);
}