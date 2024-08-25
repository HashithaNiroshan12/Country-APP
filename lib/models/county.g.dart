// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'county.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      flags: Flags.fromJson(json['flags'] as Map<String, dynamic>),
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      capital:
          (json['capital'] as List<dynamic>).map((e) => e as String).toList(),
      region: json['region'] as String,
      languages: Languages.fromJson(json['languages'] as Map<String, dynamic>),
      population: (json['population'] as num).toInt(),
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'flags': instance.flags,
      'name': instance.name,
      'capital': instance.capital,
      'region': instance.region,
      'languages': instance.languages,
      'population': instance.population,
    };
