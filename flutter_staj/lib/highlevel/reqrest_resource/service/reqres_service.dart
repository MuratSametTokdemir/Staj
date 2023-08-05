import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_examples/highlevel/reqrest_resource/model/resources_model.dart';

abstract class IReqresService {
  final Dio dio;

  IReqresService(this.dio);
  Future<resourcesModel?> fetchResourceItem();
}

enum _ReqResPath { resource }

class ReqresService extends IReqresService {
  ReqresService(Dio dio) : super(dio);

  @override
  Future<resourcesModel?> fetchResourceItem() async {
    final response = await dio.get("/${_ReqResPath.resource.name}");

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is Map<String, dynamic>) {
        return resourcesModel.fromJson(jsonBody);
      }
    }
    return null;
  }
}
