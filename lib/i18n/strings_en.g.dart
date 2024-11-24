///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final TranslationsViewsEn views = TranslationsViewsEn._(_root);
}

// Path: views
class TranslationsViewsEn {
	TranslationsViewsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsViewsLoginEn login = TranslationsViewsLoginEn._(_root);
	late final TranslationsViewsHomeEn home = TranslationsViewsHomeEn._(_root);
}

// Path: views.login
class TranslationsViewsLoginEn {
	TranslationsViewsLoginEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get welcome => 'Welcome';
	String get userName => 'Username';
	String get password => 'Password';
	String get loginButton => 'Login';
	String get forgotPassword => 'Forgot Password?';
	String get userNameRequired => 'Username is required';
	String get passwordRequired => 'Password is required';
	String get passwordInvalid => 'Password is invalid';
}

// Path: views.home
class TranslationsViewsHomeEn {
	TranslationsViewsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get welcome => 'Welcome Home!';
	String greeting({required Object userName}) => 'Hello, ${userName}!';
	String get language => 'Language';
	String get changeLanguage => 'Change Language';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'views.login.welcome': return 'Welcome';
			case 'views.login.userName': return 'Username';
			case 'views.login.password': return 'Password';
			case 'views.login.loginButton': return 'Login';
			case 'views.login.forgotPassword': return 'Forgot Password?';
			case 'views.login.userNameRequired': return 'Username is required';
			case 'views.login.passwordRequired': return 'Password is required';
			case 'views.login.passwordInvalid': return 'Password is invalid';
			case 'views.home.welcome': return 'Welcome Home!';
			case 'views.home.greeting': return ({required Object userName}) => 'Hello, ${userName}!';
			case 'views.home.language': return 'Language';
			case 'views.home.changeLanguage': return 'Change Language';
			default: return null;
		}
	}
}

