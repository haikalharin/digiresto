import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_geocode_param.g.dart';

@JsonSerializable(explicitToJson: true)
class GetGeoCodeParam {
  String latitude;
  String longitude;
  GetGeoCodeParam({
    required this.latitude,
    required this.longitude,
  });

  Map<String, dynamic> toMap() => _$GetGeoCodeParamToJson(this);
}
