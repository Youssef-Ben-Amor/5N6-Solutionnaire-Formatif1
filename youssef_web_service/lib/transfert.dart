import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'transfert.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
///
/// La commande pour

@JsonSerializable()
class Animal {
  String nom;
  String espece;
  String famille;
  String continent;

  Animal({
    required this.nom,
    required this.espece,
    required this.famille,
    required this.continent,
  });

  factory Animal.fromJson(Map<String, dynamic> json) =>
      _$AnimalFromJson(json);

  Map<String, dynamic> toJson() => _$AnimalToJson(this);
}

