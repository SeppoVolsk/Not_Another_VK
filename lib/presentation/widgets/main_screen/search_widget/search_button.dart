part of 'search_widget.dart';

class SearchButton extends StatelessWidget {
  SearchButton({required this.textController, Key? key}) : super(key: key);
  TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenBLoC, MainScreenState>(
        builder: (context, state) {
      return FloatingActionButton(
        backgroundColor: AppColors.darkBlue,
        child: state.when(
          idle: (data, _) =>
              const CircularProgressIndicator(color: Colors.white),
          processing: (data, _) =>
              const CircularProgressIndicator(color: Colors.white),
          successful: (data, _) => const Icon(Icons.autorenew),
          error: (data, _) => const Icon(Icons.error_outline),
        ),
        onPressed:
            state is SuccessfulMainScreenState || state is ErrorMainScreenState
                ? () {
                    FocusScope.of(context).unfocus();
                    if (textController.text.isNotEmpty) {
                      print('ИЩЕМ: $textController');
                      context
                          .read<MainScreenBLoC>()
                          .add(MainScreenEvent.load(textController.text));
                      textController.text = "";
                    }
                  }
                : null,
      );
    });
  }
}
