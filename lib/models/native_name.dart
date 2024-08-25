import 'package:country_app/models/nno.dart';
import 'package:json_annotation/json_annotation.dart';

part 'native_name.g.dart';

@JsonSerializable()
class NativeName {
    @JsonKey(name: "nno")
    Nno nno;
    @JsonKey(name: "nob")
    Nno nob;
    @JsonKey(name: "smi")
    Nno smi;

    NativeName({
        required this.nno,
        required this.nob,
        required this.smi,
    });

    factory NativeName.fromJson(Map<String, dynamic> json) => _$NativeNameFromJson(json);

    Map<String, dynamic> toJson() => _$NativeNameToJson(this);
}