import 'package:flutter_boiler/domain/entities/data_entity.dart';

abstract class PostsDataSource {

  Future<List<DataEntity>> getPosts();

}