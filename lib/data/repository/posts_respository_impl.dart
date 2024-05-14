import 'package:flutter_boiler/domain/datasource/posts_datasource.dart';
import 'package:flutter_boiler/domain/repository/posts_repository.dart';
import 'package:flutter_boiler/domain/entities/data_entity.dart';

class PostsRepositoryImpl extends PostsRepository {

  final PostsDataSource postsDatasource;

  PostsRepositoryImpl({required this.postsDatasource});

  @override
  Future<List<DataEntity>> getPosts() {
    return postsDatasource.getPosts();
  }

}