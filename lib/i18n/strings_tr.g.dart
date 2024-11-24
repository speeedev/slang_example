///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsTr implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.tr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsTr _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsViewsTr views = _TranslationsViewsTr._(_root);
}

// Path: views
class _TranslationsViewsTr implements TranslationsViewsEn {
	_TranslationsViewsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsViewsLoginTr login = _TranslationsViewsLoginTr._(_root);
	@override late final _TranslationsViewsHomeTr home = _TranslationsViewsHomeTr._(_root);
}

// Path: views.login
class _TranslationsViewsLoginTr implements TranslationsViewsLoginEn {
	_TranslationsViewsLoginTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Hoşgeldiniz';
	@override String get userName => 'Kullanıcı Adı';
	@override String get password => 'Parola';
	@override String get loginButton => 'Giriş Yap';
	@override String get forgotPassword => 'Parolanızı mı unuttunuz?';
	@override String get userNameRequired => ' Kullanıcı adı gerekli';
	@override String get passwordRequired => 'Parola gerekli';
	@override String get passwordInvalid => 'Parola geçersiz';
}

// Path: views.home
class _TranslationsViewsHomeTr implements TranslationsViewsHomeEn {
	_TranslationsViewsHomeTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Ana Sayfaya Hoşgeldiniz!';
	@override String greeting({required Object userName}) => 'Merhaba, ${userName}!';
	@override String get language => 'Dil';
	@override String get changeLanguage => 'Dili Değiştir';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsTr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'views.login.welcome': return 'Hoşgeldiniz';
			case 'views.login.userName': return 'Kullanıcı Adı';
			case 'views.login.password': return 'Parola';
			case 'views.login.loginButton': return 'Giriş Yap';
			case 'views.login.forgotPassword': return 'Parolanızı mı unuttunuz?';
			case 'views.login.userNameRequired': return ' Kullanıcı adı gerekli';
			case 'views.login.passwordRequired': return 'Parola gerekli';
			case 'views.login.passwordInvalid': return 'Parola geçersiz';
			case 'views.home.welcome': return 'Ana Sayfaya Hoşgeldiniz!';
			case 'views.home.greeting': return ({required Object userName}) => 'Merhaba, ${userName}!';
			case 'views.home.language': return 'Dil';
			case 'views.home.changeLanguage': return 'Dili Değiştir';
			default: return null;
		}
	}
}

