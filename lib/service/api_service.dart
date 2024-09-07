import 'dart:convert';
import 'package:data_app/model/awaas_model/awass_model.dart';
import 'package:http/http.dart' as http;

import '../model/crop_model/data_crop_model.dart';

class ApiService {
  final String _baseUrl = 'https://api.data.gov.in';
  // final String _searchEndPoint = '/9ef84268-d588-465a-a308-a864a43d0070';
  final String _apiKey =
      '579b464db66ec23bdd000001cdd3946e44ce4aad7209ff7b23ac571b';

  Future<List<DataCropModel>> fetchData(String _searchEndPoint) async {
    final response = await http.get(Uri.parse(
        '$_baseUrl$_searchEndPoint?api-key=$_apiKey&format=json&offset=0&limit=10'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print(data); // Check the entire API response

      final records = (data['records'] as List).map((record) {
        print(record); // Check each record
        return DataCropModel.fromJson(record);
      }).toList();
      print(records); // Check the list of DataCropModel objects
      return records;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<PmayGModel>> fetchAwassData(String _searchEndPoint) async {
    final response = await http.get(Uri.parse(
        '$_baseUrl$_searchEndPoint?api-key=$_apiKey&format=json&offset=0&limit=10'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print(data); // Check the entire API response

      final records = (data['records'] as List).map((record) {
        print(record);
        return PmayGModel.fromJson(record);
      }).toList();
      return records;
    } else {
      throw Exception('Failed to Load');
    }
  }
}
