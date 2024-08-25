import 'package:json_annotation/json_annotation.dart';

part 'languages.g.dart';

@JsonSerializable()
class Languages {
  @JsonKey(name: "nno")
  String nno;
  @JsonKey(name: "nob")
  String nob;
  @JsonKey(name: "smi")
  String smi;

  Languages({
    required this.nno,
    required this.nob,
    required this.smi,
  });

  factory Languages.fromJson(Map<String, dynamic> json) =>
      _$LanguagesFromJson(json);

  Map<String, dynamic> toJson() => _$LanguagesToJson(this);

  // Add this method to retrieve a list of language values
  List<String> get values => [nno, nob, smi];
}
