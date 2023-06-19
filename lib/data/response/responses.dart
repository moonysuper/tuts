import 'package:json_annotation/json_annotation.dart';
part 'responses.g.dart';

@JsonSerializable()
class BaseResponse{
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "messages")
  String? messages;
}

@JsonSerializable()
class CustomerResponse{
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "numOfNotification")
  int? numOfNotification;
  CustomerResponse(this.id,this.name,this.numOfNotification);

  factory CustomerResponse.fromJson(Map<String,dynamic> json) => _$CustomerResponseFromJson(json);

  Map<String,dynamic> toJson() => _$CustomerResponseToJson(this);
}
@JsonSerializable()
class ContactResponse{
  @JsonKey(name: "phone")
  String? phone;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "link")
  String? link;
  ContactResponse(this.phone,this.email,this.link);

  factory ContactResponse.fromJson(Map<String,dynamic> json) => _$ContactResponseFromJson(json);

  Map<String,dynamic> toJson() => _$ContactResponseToJson(this);
}

@JsonSerializable()
class AuthenticationResponse extends BaseResponse{
  @JsonKey(name: "CustomerResponse")
  CustomerResponse? customer;
  @JsonKey(name: "ContactResponse")
  ContactResponse? contact;

  AuthenticationResponse(this.customer,this.contact);

  factory AuthenticationResponse.fromJson(Map<String,dynamic> json) => _$AuthenticationResponseFromJson(json);

  Map<String,dynamic> toJson() => _$AuthenticationResponseToJson(this);

}