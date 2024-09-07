import 'package:data_app/model/awaas_model/awass_model.dart';
import 'package:data_app/model/crop_model/data_crop_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../service/api_service.dart';

final dataCropProvider = FutureProvider<List<DataCropModel>>((ref) async {
  final apiService = ApiService();
  return apiService.fetchData('/resource/9ef84268-d588-465a-a308-a864a43d0070');
});

final dataAwassProvider = FutureProvider<List<PmayGModel>>((ref) async {
  final apiService = ApiService();
  return apiService
      .fetchAwassData('/resource/8db2aed1-9839-4eca-9f97-f8038e9bd3c3');
});
