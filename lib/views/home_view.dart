import 'package:flutter/material.dart';
import 'package:slang_example/i18n/strings.g.dart';

class HomeView extends StatelessWidget {
  final String userName;

  const HomeView({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.views.home.welcome),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                t.views.home.greeting(userName: userName),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 8),
              Text(
                  "${t.views.home.language}: ${LocaleSettings.currentLocale.languageCode}",
                  style: Theme.of(context).textTheme.displayMedium),
              SizedBox(
                width: 200,
                child: DropdownButton(
                  value: LocaleSettings.currentLocale,
                  items: AppLocale.values
                      .map((locale) => DropdownMenuItem(
                            value: locale,
                            child: Text(locale.languageCode),
                          ))
                      .toList(),
                  onChanged: (value) {
                    AppLocale newAppLocale = value as AppLocale;
                    LocaleSettings.setLocale(newAppLocale);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
