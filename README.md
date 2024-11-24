# Flutter Slang Localization Example

This project demonstrates how to implement localization (i18n) in a Flutter application using the Slang package efficiently and effectively. The application includes two main screens: a login screen (`LoginView`) and a home screen (`HomeView`). It also features dynamic language switching and automatic language detection based on the device's default settings.


### Features
- Automatically generated localization code using the Slang package.
- Dynamic language switching via a dropdown menu.
- Automatic language selection based on the device's default locale.
- Supports English (en), Turkish (tr), and German (de).
- Simple and clean code structure.

### Project Structure

**Key Directories and Files**
- `lib/main.dart`: The entry point of the application, which includes localization setup and the main navigation structure.
- `lib/views/login_view.dart`: The login screen, where users can input their credentials and navigate to the home screen.
- `lib/views/home_view.dart`: The home screen, displaying a welcome message and a dropdown for language selection.
- `lib/i18n/`: Contains the JSON files and generated Dart files for localization.

**Localization Process**

1. Define Localization Files
Create JSON files for each supported language in the lib/i18n directory. For example:

- `strings.i18n.json` (default locale: English)
- `strings_tr.i18n.json` (Turkish translations)
- `strings_de.i18n.json` (German translations)

**Example `strings.i18n.json`:**

```json
{
  "views": {
    "login": {
      "welcome": "Welcome",
      "userName": "Username",
      "userNameRequired": "Please enter your username.",
      "password": "Password",
      "passwordRequired": "Please enter your password.",
      "passwordInvalid": "Password must be at least 6 characters.",
      "loginButton": "Login",
      "forgotPassword": "Forgot your password?"
    },
    "home": {
      "welcome": "Welcome Home!",
      "greeting": "Hello, {{userName}}!",
      "language": "Current Language"
    }
  }
}
```

### 2. Generate Code
Run the following command to generate Dart files for localization:

```
dart run slang
```

This generates files such as `strings.g.dart` in the `lib/i18n` directory.

### 3. Use Translations in Code
Access localized strings via the `t` variable:

```dart
Text(t.views.login.welcome) // Displays "Welcome" in English.
Text(t.views.home.greeting(userName: "John")) // Displays "Hello, John!".
```

### Dynamic Language Switching
The application allows users to change the language dynamically using the dropdown menu on the `HomeView` screen. The language is switched using:

```dart
LocaleSettings.setLocale(AppLocale.tr); // Switch to Turkish.
```

### Screenshots
| View            | Screenshot                                                                 |
|------------------|------------------------------------------------------------------------|
| **Login Screen** | ![Login Screen](https://github.com/speeedev/slang_example/blob/master/screenshots/login.png) |
| **Home Screen**  | ![Home Screen](https://github.com/speeedev/slang_example/blob/master/screenshots/home.png)  |

### Setup Instructions

Clone the Repository

```
git clone https://github.com/your-username/slang-localization-example.git
cd slang-localization-example
```

Install Dependencies Run the following command to install the required packages:

```
flutter pub get
```

Run the Application Start the application using:

```
flutter run
```
