import 'package:country_app/models/county.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://restcountries.com/v3.1/")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(
      "region/europe?fields=name,capital,flags,region,languages,population,capital")
  Future<List<Country>> getEuropeanCountries();
}
