part of 'search_widget.dart';

class SearchField extends StatefulWidget {
  final TextEditingController controller;
  const SearchField(this.controller, {Key? key}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Theme.of(context).primaryColor),
      controller: widget.controller,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkBlue, width: 4),
            borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.darkBlue,
              width: 4,
            ),
            borderRadius: BorderRadius.circular(8)),
        filled: true,
        fillColor: Colors.white,
        hintText: 'Поиск',
      ),
    );
  }
}
