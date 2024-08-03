import 'package:dio/dio.dart';

class ApiService {
  static Dio dio = Dio();

  static Future<Map<String, dynamic>> getQuranData() async {
    var response = await dio.get(
      'http://api.alquran.cloud/v1/quran/quran-uthmani',
    );
    final Map<String, dynamic> data = response.data['data'];

    return data;
  }
}
