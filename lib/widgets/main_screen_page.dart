import 'package:flutter/material.dart';
import 'package:vk_postman/widgets/main_screen_model.dart';

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

    MainScreenPageProvider.read(context)?.model.loadPostsFromStorageVerTwo();
    _searchController.addListener(() {
      MainScreenPageProvider.read(context)?.model.newsQuery =
          _searchController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool loadingInProgress =
        MainScreenPageProvider.watch(context)!.model.loadingInProgress;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: TitleWidget(),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              !loadingInProgress
                  ? PostListWidget()
                  : Center(child: Text('Ищем новости...')),
              HistoryWidget(),
              SearchWidget(_searchController),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: loadingInProgress
              ? CircularProgressIndicator(color: Colors.white)
              : const Icon(Icons.autorenew),
          onPressed: !loadingInProgress
              ? () {
                  FocusScope.of(context).unfocus();
                  MainScreenPageProvider.read(context)?.model.loadPostsVerTwo();
                }
              : null,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}

class PostListWidget extends StatelessWidget {
  const PostListWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      itemBuilder: (BuildContext context, int index) {
        return PostCard(index: index);
      },
      itemCount: MainScreenPageProvider.watch(context)?.model.post.length ?? 0,
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
    dynamic post = MainScreenPageProvider.read(context)?.model.post;

    return Card(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(post[widget.index].userPhoto),
            ),
            title: Text(post[widget.index].firstName +
                ' ' +
                post[widget.index].surName),
            subtitle: Text('id: ' + post[widget.index].userId.toString()),
          ),
          Wrap(
            children: [
              for (var element in post[widget.index].postPhoto)
                element != null ? Image.network(element) : SizedBox.shrink()
            ],
          ),
          ExpansionTile(
            title: !textTileIsOpen
                ? Text(
                    post[widget.index].postText,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  )
                : Text(''),
            children: [
              Text(post[widget.index].postText),
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
        MainScreenPageProvider.watch(context)!.model.post.length.toString());
  }
}

class SearchWidget extends StatefulWidget {
  TextEditingController controller;
  SearchWidget(this.controller, {Key? key}) : super(key: key);

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

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic model = MainScreenPageProvider.watch(context)?.model;
    return Wrap(children: [
      for (String element in model.historyWords)
        InputChip(
          label: Text(element),
          showCheckmark: false,
          selected: model.newsQuery == element,
          selectedColor: Theme.of(context).primaryColor,
          onSelected: (bool v) {
            model.newsQuery = element;
            model.loadPostsFromStorageVerTwo(element);
          },
          deleteIcon: Icon(Icons.cancel),
          onDeleted: () {
            model.historyWords.remove(element);
            model.removeHistoryElementAtStorage(element);
            model.notifyListeners();
          },
        ),
    ]);
  }
}

// ChoiceChip(
//           label: Text(element),
//           selected: model.newsQuery == element,
//           selectedColor: Theme.of(context).primaryColor,
//           onSelected: (bool value) {
//             model.newsQuery = element;
//             //model.notifyListeners();
//             model.loadPostsFromStorageVerTwo(element);
//           },