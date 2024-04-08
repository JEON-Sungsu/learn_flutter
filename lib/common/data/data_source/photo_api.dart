import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:learn_flutter/common/data/dto/photo_dto.dart';

class PhotoApi {
  final http.Client _client;

  Future<List<PhotoDto>> getPhotoList() async {
    final jsonString = jsonDecode(jsonData) as List;
    final List<PhotoDto> photoList = jsonString.map((e) => PhotoDto.fromJson(e))
        .toList();
    return photoList;
  }

  PhotoApi({
    required http.Client? client,
  }) : _client = client ?? http.Client();
}

const jsonData = """
[
{
    "albumId": 1,
    "id": 1,
    "title": "짭데이터",
    "url": "assets/image/banner_mock_01.png",
    "thumbnailUrl": "없음"
  },
  {
    "albumId": 1,
    "id": 2,
    "title": "짭데이터",
    "url": "assets/image/banner_mock_02.png",
    "thumbnailUrl": "없음"
  },
  {
    "albumId": 1,
    "id": 3,
    "title": "짭데이터",
    "url": "assets/image/banner_mock_03.png",
    "thumbnailUrl": "없음"
  },
  {
    "albumId": 1,
    "id": 4,
    "title": "짭데이터",
    "url": "assets/image/banner_mock_04.png",
    "thumbnailUrl": "없음"
  },
  {
    "albumId": 1,
    "id": 5,
    "title": "짭데이터",
    "url": "assets/image/banner_mock_05.png",
    "thumbnailUrl": "없음"
  }
]
""";