import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SelectLocaleWidget extends StatefulWidget {
  const SelectLocaleWidget({Key? key}) : super(key: key);

  @override
  State<SelectLocaleWidget> createState() => _SelectLocaleWidgetState();
}

class _SelectLocaleWidgetState extends State<SelectLocaleWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(items: , onChanged: onChanged);
  }
}