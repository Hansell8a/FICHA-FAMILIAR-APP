import 'package:dio/dio.dart';
import 'package:flutter_boiler/domain/datasource/posts_datasource.dart';
import 'package:flutter_boiler/data/models/data_model.dart';
import 'package:flutter_boiler/domain/entities/data_entity.dart';

class PostsDataSourceImpl extends PostsDataSource {

  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com/',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  @override
  Future<List<DataEntity>> getPosts() async {
    try {

      final Response<dynamic> response = await dio.get('posts');

      if (response.statusCode == 200) {

        final List<DataModel> dataModel = (response.data as List<dynamic>).map((dynamic e) => DataModel.fromJson(e as Map<String, dynamic>)).toList();

        final List<DataEntity> dataEntity = dataModel.map((DataModel e) => DataEntity(
            userId: e.userId,
            id: e.id,
            title: e.title,
            body: e.body,
        )).toList();

        return dataEntity;

      } else {
        throw Exception('Failed to load posts');
      }
       
    } catch (e) {
      rethrow;
    }
  }

}