import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:vk_postman/presentation/blocs/main_screen_bloc.dart';
import 'package:vk_postman/presentation/navigation/main_navigation.dart';

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
    return BlocBuilder<MainScreenBLoC, MainScreenState>(
      builder: ((context, state) {
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
                    'id: ${state.data.posts?[widget.index].userId}\n${DateFormat.yMMMMd(Localizations.localeOf(context).toLanguageTag()).format(DateTime.parse(state.data.posts?[widget.index].dateTime ?? ''))}'),
              ),
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
  }
}
