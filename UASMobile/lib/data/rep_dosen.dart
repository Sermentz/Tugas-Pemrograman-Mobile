import 'package:dio/dio.dart';

import '../../utils/dio_response.dart';
import '../model/dosen.dart';
import '../model/dosen_respon.dart';

abstract class DosenRepository {
  Future<DioResponse<List<Dosen>>> getListDosen();
  Future<DioResponse<String>> addDosen(Dosen dosen);
  Future<DioResponse<String>> updateDosen(Dosen dosen);
  Future<DioResponse<String>> deleteDosen(int id);
}

class DosenRepositoryImpl implements DosenRepository {
  @override
  Future<DioResponse<String>> addDosen(Dosen dosen) async {
    DioResponse<String> dioResponse = DioResponse();
    try {
      Response response =
      await _dio().post('/dosendat', data: dosen.toJson1());
      dioResponse.data = response.data['message'];
    } on DioError catch (e) {
      dioResponse.data = null;
      dioResponse.errorMessage = e.message;
    }
    return dioResponse;
  }

  @override
  Future<DioResponse<String>> deleteDosen(int id) async {
    DioResponse<String> dioResponse = DioResponse();
    try {
      var response = await _dio().delete('/dosendat/$id');
      dioResponse.data = response.data['message'];
    } on DioError catch (e) {
      dioResponse.data = null;
      dioResponse.errorMessage = e.message;
    }
    return dioResponse;
  }

  @override
  Future<DioResponse<List<Dosen>>> getListDosen() async {
    DioResponse<List<Dosen>> dioResponse = DioResponse();
    try {
      var response = await _dio().get('/dosendat');
      var dosenResponse = DosenResponse.fromJson(response.data);
      dioResponse.data = dosenResponse.data;
    } on DioError catch (e) {
      dioResponse.data = null;
      dioResponse.errorMessage = e.message;
    }
    return dioResponse;
  }

  @override
  Future<DioResponse<String>> updateDosen(Dosen dosen) async {
    DioResponse<String> dioResponse = DioResponse();
    try {
      var response = await _dio()
          .put('/dosendat/${dosen.id}}', data: dosen.toJson1());
      dioResponse.data = response.data['message'];
    } on DioError catch (e) {
      dioResponse.data = null;
      dioResponse.errorMessage = e.message;
    }
    return dioResponse;
  }
}

Dio _dio() {
  var options = BaseOptions(
      baseUrl: 'http://127.0.0.1:8000/api',
      connectTimeout: 5000,
      receiveTimeout: 10000,
      contentType: 'application/json',
      responseType: ResponseType.json);
  return Dio(options);
}