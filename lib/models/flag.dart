import 'package:json_annotation/json_annotation.dart';

part 'flag.g.dart';

@JsonSerializable()
class Flags {
    @JsonKey(name: "png")
    String png;
    @JsonKey(name: "svg")
    String svg;
    @JsonKey(name: "alt")
    String alt;

    Flags({
        required this.png,
        required this.svg,
        required this.alt,
    });

    factory Flags.fromJson(Map<String, dynamic> json) => _$FlagsFromJson(json);

    Map<String, dynamic> toJson() => _$FlagsToJson(this);
}