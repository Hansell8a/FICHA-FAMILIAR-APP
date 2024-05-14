import 'package:flutter_boiler/domain/entities/data_entity.dart';

abstract class PostsRepository {

  Future<List<DataEntity>> getPosts();

}