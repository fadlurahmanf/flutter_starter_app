import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter_app/core/module/locator_module/locator_module.dart';
import 'package:flutter_starter_app/ui/example1/bloc/get_post_event.dart';
import 'package:flutter_starter_app/ui/example1/bloc/get_post_state.dart';
import 'package:flutter_starter_app/ui/example1/datasources/post_datasources.dart';

class GetPostBloc extends Bloc<GetPostEvent, GetPostState>{
  GetPostBloc() : super(GetPostInit());

  PostDataRepository postDataImpl = locator<PostDataRepository>();

  @override
  Stream<GetPostState> mapEventToState(GetPostEvent event) async*{
    if(event is GetSinglePost){
      yield GetPostLoading();
      try{
        var data = await postDataImpl.getPost();
        yield GetPostSuccess(postResponse: data);
      }catch(e){
        yield GetPostFailed(message: e.toString());
      }
    }
  }
}