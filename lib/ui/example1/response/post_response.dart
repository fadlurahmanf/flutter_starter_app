import 'package:json_annotation/json_annotation.dart';

part 'post_response.g.dart';

@JsonSerializable()
class PostResponse{
  @JsonKey(name: "userId")
  late final int? userId;
  @JsonKey(name: "id")
  late final int? id;
  @JsonKey(name: "title")
  late final String? title;
  @JsonKey(name: "body")
  late final String? body;

  PostResponse({this.userId, this.id, this.body, this.title});

  factory PostResponse.fromJson(Map<String, dynamic> json) => _$PostResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostResponseToJson(this);
}