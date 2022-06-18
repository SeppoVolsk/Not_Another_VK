import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/presentation/blocs/main_screen_bloc.dart';
import 'package:vk_postman/presentation/navigation/main_navigation.dart';

class PostListWidget extends StatelessWidget {
  const PostListWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      itemBuilder: (BuildContext context, int index) {
        return PostCard(index: index);
      },
      itemCount: context.select((MainScreenBLoC bloc) =>
          bloc.state.data.posts?.length ??
          0), //MainScreenPageProvider.watch(context)?.model.post.length ?? 0,
    );
  }
}

class PostCard extends StatefulWidget {
  final int index;
  const PostCard({Key? key, required this.index}) : super(key: key);

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool textTileIsOpen = false;

  @override
  Widget build(BuildContext context) {
    //dynamic post = MainScreenPageProvider.read(context)?.model.post;

    return BlocBuilder<MainScreenBLoC, MainScreenState>(
      builder: ((context, state) {
        // state.data.posts?.forEach((element) {
        //   print(element.firstName);
        // });
        return Card(
          child: Column(
            children: [
              ListTile(
                isThreeLine: true,
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      state.data.posts?[widget.index].userPhoto as String),
                ),
                title: Text(
                    '${state.data.posts?[widget.index].firstName} ${state.data.posts?[widget.index].surName}'),
                subtitle: Text(
                    'id: ${state.data.posts?[widget.index].userId}\n${state.data.posts?[widget.index].dateTime}'),
              ),
              // Wrap(
              //   children: [
              //     for (var element
              //         in state.data.posts![widget.index].postPhoto!)
              //       element != null
              //           ? InkWell(
              //               child: Image.network(element),
              //               onTap: () {

              //                 Navigator.of(context).pushNamed(
              //                     MainNavigationRoutesNames.detailScreen,
              //                     arguments: state.data.posts?[widget.index]
              //                         .postLargePhoto?[1]);
              //               },
              //             )
              //           : const SizedBox.shrink()
              //   ],
              // ),
              Wrap(
                children: [
                  for (int i = 0;
                      i < state.data.posts![widget.index].postPhoto!.length;
                      i++)
                    state.data.posts![widget.index].postPhoto![i] != null
                        ? InkWell(
                            child: Image.network(state
                                .data.posts![widget.index].postPhoto![i]
                                .toString()),
                            onTap: () {
                              try {
                                Navigator.of(context).pushNamed(
                                    MainNavigationRoutesNames.detailScreen,
                                    arguments: state.data.posts?[widget.index]
                                        .postLargePhoto?[i]);
                              } catch (e) {
                                Navigator.of(context).pushNamed(
                                    MainNavigationRoutesNames.detailScreen,
                                    arguments: state.data.posts?[widget.index]
                                        .postPhoto?[i]);
                              }
                            },
                          )
                        : const SizedBox.shrink()
                ],
              ),

              ExpansionTile(
                title: !textTileIsOpen
                    ? Text(
                        state.data.posts?[widget.index].postText as String,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      )
                    : const SizedBox.shrink(),
                children: [
                  Text(state.data.posts?[widget.index].postText as String),
                ],
                onExpansionChanged: (bool v) {
                  setState(() {
                    textTileIsOpen = !textTileIsOpen;
                  });
                },
              ),
            ],
          ),
        );
      }),
    );

    // post.userPhoto == ""
    //     ? Icon(Icons.account_box)
    //     : Image.network(post.userPhoto);
    // Для CircleAvatar - NetworkImage(post.userPhoto)
  }
}
