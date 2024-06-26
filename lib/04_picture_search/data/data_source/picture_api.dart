import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:learn_flutter/04_picture_search/data/dto/picture_result_dto.dart';

class PictureApi {
  final http.Client _client;
  final String _baseUrl = 'https://pixabay.com/api/?';
  final String _apiKey = dotenv.env['PICTURE_API_KEY']!;

  PictureApi({
    http.Client? client,
  }) : _client = client ?? http.Client();

  Future<PictureResultDto> getPictureResultDto(String query) async {
    final response = await http.get(
        Uri.parse('$_baseUrl$_apiKey&q=$query&image_type=photo&pretty=true'));

    if (response.statusCode != 200) {
      throw Exception('네트워크 에러 ${response.statusCode}');
    }

    await Future.delayed(const Duration(seconds: 2));

    return PictureResultDto.fromJson(jsonDecode(response.body));
  }
}
