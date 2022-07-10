import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/data/persistent_storage.dart';
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
  final storage = PersistentStorage();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenBLoC, MainScreenState>(
      builder: (context, state) {
        var history = state.data.history;
        if (history != null) {
          return Wrap(children: [
            for (String element in history.historyWords)
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
                      .add(MainScreenEvent.load(element));
                },
                deleteIcon: const Icon(Icons.cancel),
                onDeleted: () async {
                  state.data.history?.historyWords.remove(element);
                  await storage.delete(key: element);
                  setState(() {});
                },
              )
          ]);
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
