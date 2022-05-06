import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/domain/blocs/main_screen_bloc.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({Key? key, required this.title}) : super(key: key);

  final String title;

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
    final bloc = context.read<PostsBloc>();
    //bool loadingInProgress =
    //    MainScreenPageProvider.watch(context)!.model.loadingInProgress;
    return BlocBuilder<PostsBloc, PostsState>(builder: (context, state) {
      return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: const TitleWidget(),
          ),
          body: SafeArea(
            child: Stack(
              children: [
                !state.loadingInProgress
                    ? const PostListWidget()
                    : const Center(child: Text('Ищем новости...')),
                SearchWidget(_searchController),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: state.loadingInProgress
                ? const CircularProgressIndicator(color: Colors.white)
                : const Icon(Icons.autorenew),
            onPressed: !state.loadingInProgress
                ? () {
                    FocusScope.of(context).unfocus();
                    bloc.add(
                        PostsLoadFromServer(newsQuery: _searchController.text));

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
      itemCount: context.select((PostsBloc bloc) => bloc.state.posts
          .length), //MainScreenPageProvider.watch(context)?.model.post.length ?? 0,
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

    return BlocBuilder<PostsBloc, PostsState>(
      builder: ((context, state) {
        return Card(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(state.posts[widget.index].userPhoto!),
                ),
                title: Text(state.posts[widget.index].firstName! +
                    ' ' +
                    state.posts[widget.index].surName!),
                subtitle:
                    Text('id: ' + state.posts[widget.index].userId.toString()),
              ),
              Wrap(
                children: [
                  for (var element in state.posts[widget.index].postPhoto!)
                    element != null
                        ? Image.network(element)
                        : const SizedBox.shrink()
                ],
              ),
              ExpansionTile(
                title: !textTileIsOpen
                    ? Text(
                        state.posts[widget.index].postText!,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      )
                    : const Text(''),
                children: [
                  Text(state.posts[widget.index].postText!),
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
        context.select((PostsBloc bloc) => bloc.state.posts.length.toString()));
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
  const HistoryWidget({Key? key}) : super(key: key);

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  bool? isSelected;
  @override
  Widget build(BuildContext context) {
    //dynamic model = MainScreenPageProvider.watch(context)?.model;
    return BlocBuilder<PostsBloc, PostsState>(
      builder: (context, state) {
        return Wrap(children: [
          for (String element in state.history.historyWords)
            InputChip(
              label: Text(element),
              showCheckmark: false,
              selected: isSelected = (state.newsQuery == element),
              selectedColor: Theme.of(context).primaryColor,
              onSelected: (bool v) {
                //state.newsQuery = element;
                isSelected = true;
                context
                    .read<PostsBloc>()
                    .add(PostsLoadFromStorage(storageKey: element));
                //model.loadPostsFromStorage(neededStorageKey: element);
              },
              deleteIcon: const Icon(Icons.cancel),
              onDeleted: () {
                state.history.historyWords.remove(element);
                //PostsDataProvider().removeHistoryElementAtStorage(element);
                //model.notifyListeners();
              },
            ),
        ]);
      },
    );
  }
}
