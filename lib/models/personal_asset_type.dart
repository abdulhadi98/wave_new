import 'package:wave_flutter/helper/enums.dart';
import 'package:wave_flutter/helper/utils.dart';
import 'package:wave_flutter/services/urls_container.dart';

List<PersonalAssetTypeModel> personalAssetTypeListModelFromJson(json) => List<PersonalAssetTypeModel>.from(json.map((x) => PersonalAssetTypeModel.fromJson(x)));

class PersonalAssetTypeModel {

  PersonalAssetTypeModel({
    required this.id,
    required this.name,
    this.icon,
    required this.createdAt,
    required this.updatedAt,
    required this.personalAssetTypeOptions,
  });

  int id;
  String name;
  String? icon;
  DateTime createdAt;
  DateTime updatedAt;
  List<PersonalAssetTypeOptionModel> personalAssetTypeOptions;

  String? get iconUrl => '${UrlsContainer.baseUrl}/$icon';

  factory PersonalAssetTypeModel.fromJson(Map<String, dynamic> json) => PersonalAssetTypeModel(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : json["icon"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    personalAssetTypeOptions: List<PersonalAssetTypeOptionModel>.from(json["personal_asset_type_options"].map((x) => PersonalAssetTypeOptionModel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : icon,
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
    "personal_asset_type_options": personalAssetTypeOptions == null ? null : List<dynamic>.from(personalAssetTypeOptions.map((x) => x.toJson())),
  };
}

class PersonalAssetTypeOptionModel {
  PersonalAssetTypeOptionModel({
    required this.id,
    required this.name,
    required this.personalAssetTypeId,
    required this.type,
    this.parentId,
    required this.createdAt,
    required this.updatedAt,
    this.userPersonalAssetTypeOptionValue,
    this.personalAssetTypeOptionValues,
  });

  int id;
  String name;
  int personalAssetTypeId;
  String type;
  String? parentId;
  DateTime createdAt;
  DateTime updatedAt;
  UserPersonalAssetTypeOptionValue? userPersonalAssetTypeOptionValue;
  List<PersonalAssetTypeOptionValues>? personalAssetTypeOptionValues;

  AddPersonalAssetHoldingTypeOptionType? get typeEnum =>
      Utils.enumFromString<AddPersonalAssetHoldingTypeOptionType>(type, AddPersonalAssetHoldingTypeOptionType.values);

  factory PersonalAssetTypeOptionModel.fromJson(Map<String, dynamic> json) => PersonalAssetTypeOptionModel(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    personalAssetTypeId: json["personal_asset_type_id"] == null ? null : json["personal_asset_type_id"],
    type: json["type"],
    parentId: json["parent_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    userPersonalAssetTypeOptionValue: json["user_personal_asset_type_option_value"] == null ? null : UserPersonalAssetTypeOptionValue.fromJson(json["user_personal_asset_type_option_value"]),
    personalAssetTypeOptionValues: json["personal_asset_type_option_values"] == null ? null : List<PersonalAssetTypeOptionValues>.from(json["personal_asset_type_option_values"].map((x) => PersonalAssetTypeOptionValues.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "personal_asset_type_id": personalAssetTypeId == null ? null : personalAssetTypeId,
    "type": type,
    "parent_id": parentId,
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
    "user_personal_asset_type_option_value": userPersonalAssetTypeOptionValue == null ? null : userPersonalAssetTypeOptionValue!.toJson(),
    "personal_asset_type_option_values": personalAssetTypeOptionValues == null ? null : List<dynamic>.from(personalAssetTypeOptionValues!.map((x) => x.toJson())),
  };
}

class UserPersonalAssetTypeOptionValue {
  UserPersonalAssetTypeOptionValue({
    required this.id,
    this.personalAssetId,
    this.typeOptionId,
    this.optionValueId,
    this.value,
    required this.createdAt,
    required this.updatedAt,
    this.personalAssetTypeOptionValues,
  });

  int id;
  int? personalAssetId;
  int? typeOptionId;
  int? optionValueId;
  String? value;
  DateTime createdAt;
  DateTime updatedAt;
  PersonalAssetTypeOptionValues? personalAssetTypeOptionValues;

  factory UserPersonalAssetTypeOptionValue.fromJson(Map<String, dynamic> json) => UserPersonalAssetTypeOptionValue(
    id: json["id"] == null ? null : json["id"],
    personalAssetId: json["personal_asset_id"] == null ? null : json["personal_asset_id"],
    typeOptionId: json["type_option_id"] == null ? null : json["type_option_id"],
    optionValueId: json["option_value_id"] == null ? null : json["option_value_id"],
    value: json["value"] == null ? null : json["value"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    personalAssetTypeOptionValues: json["personal_asset_type_option_values"] == null ? null : PersonalAssetTypeOptionValues.fromJson(json["personal_asset_type_option_values"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "personal_asset_id": personalAssetId == null ? null : personalAssetId,
    "type_option_id": typeOptionId == null ? null : typeOptionId,
    "option_value_id": optionValueId == null ? null : optionValueId,
    "value": value == null ? null : value,
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
    "personal_asset_type_option_values": personalAssetTypeOptionValues == null ? null : personalAssetTypeOptionValues!.toJson(),
  };
}

class PersonalAssetTypeOptionValues {
  PersonalAssetTypeOptionValues({
    required this.id,
    required this.name,
    required this.value,
    required this.typeOptionId,
    this.parentId,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String name;
  String value;
  int typeOptionId;
  dynamic parentId;
  DateTime createdAt;
  DateTime updatedAt;

  factory PersonalAssetTypeOptionValues.fromJson(Map<String, dynamic> json) => PersonalAssetTypeOptionValues(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    value: json["value"] == null ? null : json["value"],
    typeOptionId: json["type_option_id"] == null ? null : json["type_option_id"],
    parentId: json["parent_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "value": value == null ? null : value,
    "type_option_id": typeOptionId == null ? null : typeOptionId,
    "parent_id": parentId,
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
  };
}
