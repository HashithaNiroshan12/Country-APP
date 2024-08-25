import 'package:country_app/models/native_name.dart';
import 'package:json_annotation/json_annotation.dart';

part 'name.g.dart';



@JsonSerializable()
class Name {
    @JsonKey(name: "common")
    String common;
    @JsonKey(name: "official")
    String official;
    @JsonKey(name: "nativeName")
    NativeName nativeName;

    Name({
        required this.common,
        required this.official,
        required this.nativeName,
    });

    factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);

    Map<String, dynamic> toJson() => _$NameToJson(this);
}