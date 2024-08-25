import 'package:country_app/models/flag.dart';
import 'package:country_app/models/languages.dart';
import 'package:country_app/models/name.dart';
import 'package:json_annotation/json_annotation.dart';

part 'county.g.dart';


@JsonSerializable()
class Country {
    @JsonKey(name: "flags")
    Flags flags;
    @JsonKey(name: "name")
    Name name;
    @JsonKey(name: "capital")
    List<String> capital;
    @JsonKey(name: "region")
    String region;
    @JsonKey(name: "languages")
    Languages languages;
    @JsonKey(name: "population")
    int population;

    Country({
        required this.flags,
        required this.name,
        required this.capital,
        required this.region,
        required this.languages,
        required this.population,
    });

    factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

    Map<String, dynamic> toJson() => _$CountryToJson(this);

    
}