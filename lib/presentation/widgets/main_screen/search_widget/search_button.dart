part of 'search_widget.dart';

class SearchButton extends StatelessWidget {
  SearchButton({required this.findText, Key? key}) : super(key: key);
  String findText;

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
                    if (findText.isNotEmpty) {
                      print('ИЩЕМ: $findText');
                      context
                          .read<MainScreenBLoC>()
                          .add(MainScreenEvent.load(findText));
                    }
                  }
                : null,
      );
    });
  }
}
