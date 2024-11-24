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
class TranslationsDe implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsDe _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsViewsDe views = _TranslationsViewsDe._(_root);
}

// Path: views
class _TranslationsViewsDe implements TranslationsViewsEn {
	_TranslationsViewsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsViewsLoginDe login = _TranslationsViewsLoginDe._(_root);
	@override late final _TranslationsViewsHomeDe home = _TranslationsViewsHomeDe._(_root);
}

// Path: views.login
class _TranslationsViewsLoginDe implements TranslationsViewsLoginEn {
	_TranslationsViewsLoginDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Willkommen';
	@override String get userName => 'Benutzername';
	@override String get password => 'Passwort';
	@override String get loginButton => 'Einloggen';
	@override String get forgotPassword => 'Passwort vergessen?';
	@override String get userNameRequired => 'Benutzername ist erforderlich';
	@override String get passwordRequired => 'Passwort ist erforderlich';
	@override String get passwordInvalid => 'Passwort ist ungültig';
}

// Path: views.home
class _TranslationsViewsHomeDe implements TranslationsViewsHomeEn {
	_TranslationsViewsHomeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Willkommen zu Hause!';
	@override String greeting({required Object userName}) => 'Hallo, ${userName}!';
	@override String get language => 'Sprache';
	@override String get changeLanguage => 'Sprache ändern';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsDe {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'views.login.welcome': return 'Willkommen';
			case 'views.login.userName': return 'Benutzername';
			case 'views.login.password': return 'Passwort';
			case 'views.login.loginButton': return 'Einloggen';
			case 'views.login.forgotPassword': return 'Passwort vergessen?';
			case 'views.login.userNameRequired': return 'Benutzername ist erforderlich';
			case 'views.login.passwordRequired': return 'Passwort ist erforderlich';
			case 'views.login.passwordInvalid': return 'Passwort ist ungültig';
			case 'views.home.welcome': return 'Willkommen zu Hause!';
			case 'views.home.greeting': return ({required Object userName}) => 'Hallo, ${userName}!';
			case 'views.home.language': return 'Sprache';
			case 'views.home.changeLanguage': return 'Sprache ändern';
			default: return null;
		}
	}
}

