import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_flutter/04_picture_search/data/dto/picture_result_dto.dart';

class PictureApi {
  final http.Client _client;
  final String _baseUrl = 'https://pixabay.com/api/?';
  final String _apiKey = 'key=43170860-66dd05200f7c3fa131b59ca03';

  PictureApi({
    http.Client? client,
  }) : _client = client ?? http.Client();

  Future<PictureResultDto> getPictureResultDto(String query) async {
    print(query);
    final response = await http.get(
        Uri.parse('$_baseUrl$_apiKey&q=$query&image_type=photo&pretty=true'));

    if (response.statusCode != 200) {
      throw Exception('네트워크 에러 ${response.statusCode}');
    }

    return PictureResultDto.fromJson(jsonDecode(response.body));
  }
}
