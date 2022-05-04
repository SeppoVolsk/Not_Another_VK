// ignore_for_file: public_member_api_docs, sort_constructors_first
class HistoryDataProvider {
  final int maxLength = 5;
  final List<String> historyWords;

  const HistoryDataProvider({
    this.historyWords = const <String>[],
  });
}
