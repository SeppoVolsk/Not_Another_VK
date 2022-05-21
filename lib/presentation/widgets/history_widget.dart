import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/presentation/blocs/main_screen_bloc.dart';

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
    return BlocBuilder<MainScreenBLoC, MainScreenState>(
      builder: (context, state) {
        var a = state.data.history;
        if (a != null) {
          return Wrap(children: [
            for (String element in a.historyWords)
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
                },
              )
          ]);
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}
