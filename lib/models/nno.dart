import 'package:json_annotation/json_annotation.dart';

part 'nno.g.dart';

@JsonSerializable()
class Nno {
    @JsonKey(name: "official")
    String official;
    @JsonKey(name: "common")
    String common;

    Nno({
        required this.official,
        required this.common,
    });

    factory Nno.fromJson(Map<String, dynamic> json) => _$NnoFromJson(json);

    Map<String, dynamic> toJson() => _$NnoToJson(this);
}