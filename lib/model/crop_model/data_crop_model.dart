import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_crop_model.freezed.dart';

@freezed
class DataCropModel with _$DataCropModel {
  const factory DataCropModel({
    required String state,
    required String district,
    required String market,
    required String commodity,
    required String variety,
    required String grade,
    required String arrivalDate,
    double? minPrice,
    double? maxPrice,
    double? modalPrice,
  }) = _DataCropModel;

  factory DataCropModel.fromJson(Map<String, dynamic> json) {
    double? parseDouble(String? value) {
      return value != null ? double.tryParse(value) : null;
    }

    return DataCropModel(
      state: json['state'] as String? ?? '',
      district: json['district'] as String? ?? '',
      market: json['market'] as String? ?? '',
      commodity: json['commodity'] as String? ?? '',
      variety: json['variety'] as String? ?? '',
      grade: json['grade'] as String? ?? '',
      arrivalDate: json['arrivalDate'] as String? ?? '',
      minPrice: parseDouble(json['min_price'] as String?),
      maxPrice: parseDouble(json['max_price'] as String?),
      modalPrice: parseDouble(json['modal_price'] as String?),
    );
  }
}
