import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_examples/highlevel/reqrest_resource/model/resources_model.dart';
import 'package:flutter_examples/highlevel/reqrest_resource/service/reqres_service.dart';
import 'package:flutter_examples/highlevel/reqrest_resource/view/reqres_view.dart';
import 'package:flutter_examples/mid%20level/cache/schared_cache_learn.dart';

import '../../../product/service/project_dio.dart';

abstract class ReqresViewmodel extends LoadingStateful<ReqResView> with ProjectDioMixin{
  late final IReqresService reqresService;
  List<Data> resources =  [];
  @override
  void initState() {
    super.initState();
    reqresService = ReqresService(service);  
  }
    Future<void> fetch() async{
      changeLoading();
      resources = (await reqresService.fetchResourceItem())?.data ?? [];
      changeLoading();
    }
}

