import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:vk_postman/main.dart';

class SelectLocaleWidget extends StatefulWidget {
  const SelectLocaleWidget({Key? key}) : super(key: key);

  @override
  State<SelectLocaleWidget> createState() => _SelectLocaleWidgetState();
}

class _SelectLocaleWidgetState extends State<SelectLocaleWidget> {
  var choosenLocale;
  @override
  Widget build(BuildContext context) {
    const appLanguages = AppLocalizations.supportedLocales;

    return DropdownButton<Locale>(
        value: Localizations.localeOf(context),
        items: List.generate(appLanguages.length, (index) {
          return DropdownMenuItem(
            child: Text(appLanguages[index].toLanguageTag()),
            value: appLanguages[index],
          );
        }),
        onChanged: (selected) {
          MyApp.of(context)?.setUpLocale(selected);
        });
  }
}
