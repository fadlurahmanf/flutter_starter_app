import 'package:equatable/equatable.dart';
import 'package:flutter_starter_app/ui/example1/response/post_response.dart';

class GetPostState extends Equatable{
  @override
  List<Object?> get props => [];
}

class GetPostInit extends GetPostState {}

class GetPostLoading extends GetPostState{}

class GetPostSuccess extends GetPostState{
  final PostResponse postResponse;
  GetPostSuccess({required this.postResponse});

  @override
  List<Object?> get props => [postResponse];
}

class GetAllPostSuccess extends GetPostState{
  final List<PostResponse> allPostResponse;
  GetAllPostSuccess({required this.allPostResponse});

  @override
  List<Object?> get props => [allPostResponse];
}

class GetPostFailed extends GetPostState{
  final String? message;
  GetPostFailed({this.message});

  @override
  List<Object?> get props => [message];
}