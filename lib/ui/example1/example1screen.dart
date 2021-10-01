import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter_app/core/module/locator_module/locator_module.dart';
import 'package:flutter_starter_app/ui/example1/bloc/get_post_bloc.dart';
import 'package:flutter_starter_app/ui/example1/bloc/get_post_event.dart';
import 'package:flutter_starter_app/ui/example1/bloc/get_post_state.dart';
import 'package:flutter_starter_app/ui/example1/datasources/post_datasources.dart';

class Example1Screen extends StatelessWidget {
  const Example1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetPostBloc>(create: (context)=> GetPostBloc())
      ],
      child: Example1Layout(),
    );
  }
}

class Example1Layout extends StatefulWidget {
  const Example1Layout({Key? key}) : super(key: key);

  @override
  _Example1LayoutState createState() => _Example1LayoutState();
}

class _Example1LayoutState extends State<Example1Layout> {
  PostDataRepository postDataImpl = locator<PostDataRepository>();
  @override
  Widget build(BuildContext context) {
    GetPostBloc getPostBloc = BlocProvider.of<GetPostBloc>(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Text("EXAMPLE 1 PAGE"),),
          SizedBox(height: 16,),
          BlocBuilder<GetPostBloc, GetPostState>(
            builder: (context, state){
              if(state is GetPostInit){
                return Text("BELUM ADA DATA");
              }else if(state is GetPostLoading){
                return Center(child: CircularProgressIndicator(),);
              }else if(state is GetPostSuccess){
                return Center(child: Text("BODY NYA ADALAH ${state.postResponse.body}"));
              }else if(state is GetPostFailed){
                return Text("ERROR ${state.message}");
              }else {
                return Text("BELUM ADA DATA");
              }
            },
          ),
          SizedBox(height: 16,),
          ElevatedButton(
              onPressed: ()async{
                getPostBloc.add(GetSinglePost());
              },
              child: Text("GET POST")
          )
        ],
      ),
    );
  }
}

