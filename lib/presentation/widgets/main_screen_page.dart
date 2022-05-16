// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:vk_postman/presentation/blocs/main_screen_bloc.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({Key? key}) : super(key: key);

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();

    //MainScreenPageProvider.read(context)?.model.loadPostsFromStorage();
    _searchController.addListener(() {
      //   MainScreenPageProvider.read(context)?.model.newsQuery =
      //       _searchController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenBLoC, MainScreenState>(
        builder: (context, state) {
      return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: const TitleWidget(),
          ),
          body: SafeArea(
            child: Stack(
              children: [
                state.when(
                  idle: (mainScreenEntity, _) =>
                      const Center(child: Text('Ищем новости...')),
                  processing: (data, _) =>
                      const Center(child: Text('Ищем новости...')),
                  successful: (data, _) => Stack(children: [
                    PostListWidget(),
                    HistoryWidget(),
                  ]),
                  error: (data, _) => const Center(child: Text('ERROR')),
                ),
                //   !state.loadingInProgress
                //       ? const PostListWidget()
                //       : const Center(child: Text('Ищем новости...')),

                //state.data.history?.historyWords

                SearchWidget(_searchController),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: state.when(
              idle: (data, _) =>
                  const CircularProgressIndicator(color: Colors.white),
              processing: (data, _) =>
                  const CircularProgressIndicator(color: Colors.white),
              successful: (data, _) => const Icon(Icons.autorenew),
              error: (data, _) => const Icon(Icons.error_outline),
            ),
            //state.loadingInProgress
            //     ? const CircularProgressIndicator(color: Colors.white)
            //     : const Icon(Icons.autorenew),
            onPressed: state is SuccessfulMainScreenState
                ? () {
                    FocusScope.of(context).unfocus();
                    if (_searchController.text.isNotEmpty)
                      context
                          .read<MainScreenBLoC>()
                          .add(MainScreenEvent.update(_searchController.text));

                    // MainScreenPageProvider.read(context)
                    //     ?.model
                    //     .loadPostsFromServer();
                  }
                : null,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        ),
      );
    });
  }
}

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
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      state.data.posts?[widget.index].userPhoto as String),
                ),
                title: Text(
                    '${state.data.posts?[widget.index].firstName} ${state.data.posts?[widget.index].surName}'),
                subtitle: Text('id: ${state.data.posts?[widget.index].userId}'),
              ),
              Wrap(
                children: [
                  for (var element
                      in state.data.posts![widget.index].postPhoto!)
                    element != null
                        ? Image.network(element)
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
                    : const Text(''),
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

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text('Найдено новостей: ' +
        context.select((MainScreenBLoC bloc) =>
            bloc.state.data.posts?.length.toString() ?? '0'));
  }
}

class SearchWidget extends StatefulWidget {
  final TextEditingController controller;
  const SearchWidget(this.controller, {Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 5, bottom: 15, right: 75),
        child: TextField(
          controller: widget.controller,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).primaryColor, width: 2)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).primaryColor, width: 2)),
            filled: true,
            fillColor: Colors.white,
            hintText: 'Поиск',
          ),
        ),
      ),
    );
  }
}

class HistoryWidget extends StatefulWidget {
  const HistoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  String element = 'aaa';
  bool isSelected = false;
  String? currentWord;

  @override
  Widget build(BuildContext context) {
    //final state = context.watch<MainScreenBLoC>().state;
    //newsQuery =
    // context.select((MainScreenBLoC bloc) => bloc.state.data.newsQuery);
    //print('HW read historyWords: ${state.data.history?.historyWords}');
    //print('HW historyList: ${widget.historyList}');
    //if (state.data.history?.historyWords == null) return SizedBox.shrink();
    //dynamic model = MainScreenPageProvider.watch(context)?.model;
    return BlocBuilder<MainScreenBLoC, MainScreenState>(
      builder: (context, state) {
        return Wrap(children: [
          for (String element in state.data.history!.historyWords)
            InputChip(
              label: Text(element),
              showCheckmark: false,
              selected:
                  (state.data.newsQuery == element || currentWord == element),
              selectedColor: Theme.of(context).primaryColor,
              onPressed: () {
                setState(() {
                  currentWord = element;
                });
                //setState(() => isSelected = v);

                context
                    .read<MainScreenBLoC>()
                    .add(MainScreenEvent.read(element));
                //model.loadPostsFromStorage(neededStorageKey: element);
              },
              //onSelected: (bool v) {},
              deleteIcon: const Icon(Icons.cancel),
              onDeleted: () {
                state.data.history?.historyWords.remove(element);
                state.data.history?.postDataProvider
                    .removeHistoryElementAtStorage(element);

                //PostsDataProvider().removeHistoryElementAtStorage(element);
                //model.notifyListeners();
              },
            )
        ]);
      },
    );
  }
}
