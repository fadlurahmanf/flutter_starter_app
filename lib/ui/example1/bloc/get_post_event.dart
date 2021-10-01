import 'package:equatable/equatable.dart';

class GetPostEvent extends Equatable{
  @override
  List<Object?> get props => [];
}

class GetSinglePost extends GetPostEvent{}

class GetAllPost extends GetPostEvent{}