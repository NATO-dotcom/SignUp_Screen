# Sign Screen - Coffee Shop Authentication App

A modern Flutter application featuring a comprehensive authentication system with sign-up, sign-in, and home navigation features. This app provides an intuitive user experience for a coffee shop platform with a focus on clean UI design and smooth user navigation.

## 📋 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Installation & Setup](#installation--setup)
- [Architecture](#architecture)
- [Screens & Navigation](#screens--navigation)
- [Widgets & Components](#widgets--components)
- [Technologies Used](#technologies-used)
- [Running the Application](#running-the-application)
- [Building for Production](#building-for-production)
- [Contributing](#contributing)
- [License](#license)

## 📱 Overview

Sign Screen is a Flutter-based mobile application designed for a coffee shop platform. The app focuses on user authentication and provides a seamless onboarding experience through well-designed sign-up and sign-in screens. Post-authentication, users have access to a navigable home interface with multiple sections.

## ✨ Features

### Authentication System
- **Sign Up Screen**: Complete user registration with:
  - First name and last name fields
  - Email validation
  - Password and password confirmation fields
  - Custom-designed form with Material Design principles
  
- **Sign In Screen**: User login with:
  - Email input
  - Password input with visibility toggle
  - Clean lock icon UI
  - "Forgot Password?" functionality support

### Home Navigation
- **Bottom Navigation Bar**: Multi-tab navigation system with 4 main sections:
  - 🏠 Home - Welcome screen
  - 💬 Chat - Messaging functionality
  - 👥 Community - Social community section
  - 👤 Profile - Personal user profile

### Home Screen
- Welcome message: "Welcome to our Baze!"
- Post-login landing page for users

### UI/UX Elements
- Consistent green and brown color scheme
- Custom reusable text field component
- Responsive design for various screen sizes
- Material Design principles throughout
- Smooth transitions between screens

## 📁 Project Structure

```
sign_screen/
├── lib/
│   ├── main.dart                 # Application entry point & routing
│   ├── screens/
│   │   ├── sign_up.dart         # User registration screen
│   │   ├── sign_in.dart         # User login screen
│   │   └── home_screen.dart     # Post-login welcome screen
│   ├── navigation/
│   │   └── home_nav.dart        # Bottom navigation implementation
│   └── widgets/
│       ├── my_textfield.dart    # Custom text field component
│       └── auth_button.dart     # Authentication button component
├── assets/
│   └── logo.png                 # Coffee shop logo
├── pubspec.yaml                 # Project dependencies & configuration
├── pubspec.lock                 # Dependency lock file
├── analysis_options.yaml        # Lint rules configuration
└── test/
    └── widget_test.dart         # Widget testing setup
```

## 📦 Prerequisites

Before running this project, ensure you have the following installed:

- **Flutter SDK**: Version 3.10.7 or higher
- **Dart SDK**: Version 3.10.7 or higher (comes with Flutter)
- **Android SDK**: For Android development
- **Xcode**: For iOS development (macOS only)
- **IDE**: Android Studio, VS Code, or IntelliJ IDEA
- **Git**: For version control

### Check Installation

Verify your Flutter installation:

```bash
flutter doctor
```

## 🚀 Installation & Setup

### 1. Clone the Repository

```bash
git clone git@github.com:NATO-dotcom/SignUp_Screen.git
cd sign_screen
```

### 2. Get Dependencies

Install all required packages:

```bash
flutter pub get
```

### 3. Generate Localization Files (if applicable)

```bash
flutter gen-l10n
```

## 🏗️ Architecture

This project follows a **Screen-based architecture** with separation of concerns:

- **Screens**: Individual pages/views of the application
- **Widgets**: Reusable UI components
- **Navigation**: Route management and navigation logic
- **Assets**: Static resources (images, fonts, etc.)

### State Management Pattern

- **StatelessWidget**: Used for static screens and widgets (SignUp, SignIn, HomeScreen)
- **StatefulWidget**: Used for interactive components (HomeNav with bottom navigation)

## 🎯 Screens & Navigation

### Navigation Routes

The application implements named routing for smooth navigation between screens:

| Route | Screen | Purpose |
|-------|--------|---------|
| `/` | SignUp | Default landing screen |
| `/sign` | SignIn | User login |
| `/home` | HomeScreen | Post-login welcome screen |
| `/nav` | HomeNav | Main app navigation |

### User Flow

```
SignUp → SignIn → HomeScreen → HomeNav (Main App)
   ↓
   └→ Already have account? → SignIn
```

## 🎨 Widgets & Components

### MyTextfield Widget

A reusable custom text field component with:
- Customizable hint text
- Password obscuring capability
- Material Design styled borders
- Active/focus state styling
- White fill color with rounded corners

**Location**: [lib/widgets/my_textfield.dart](lib/widgets/my_textfield.dart)

**Usage**:
```dart
MyTextfield(
  controller: emailController,
  hintText: "Enter your email",
  obsecureText: false,
)
```

### AuthButton Widget

A customizable authentication button component with:
- Configurable text
- Custom background color
- Custom text color

**Location**: [lib/widgets/auth_button.dart](lib/widgets/auth_button.dart)

### HomeNav Widget

A stateful widget providing bottom navigation with:
- 4 navigation tabs
- Screen switching functionality
- AppBar with greeting message
- Persistent navigation state

**Location**: [lib/navigation/home_nav.dart](lib/navigation/home_nav.dart)

## 💻 Technologies Used

| Technology | Version | Purpose |
|-----------|---------|---------|
| Flutter | Latest | UI Framework |
| Dart | 3.10.7+ | Programming Language |
| Material Design | 3 | Design System |
| Cupertino Icons | 1.0.8 | iOS-style Icons |

### Dependencies

All dependencies are lightweight and focused on core functionality:

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^6.0.0
```

## ▶️ Running the Application

### Run on Connected Device/Emulator

```bash
flutter run
```

### Run with Specific Device

First, list available devices:

```bash
flutter devices
```

Then run on a specific device:

```bash
flutter run -d <device_id>
```

### Run on Android Emulator

```bash
flutter emulators --launch <emulator_id>
flutter run
```

### Run on iOS Simulator (macOS only)

```bash
open -a Simulator
flutter run
```

## 🔨 Building for Production

### Build APK (Android)

```bash
flutter build apk --release
```

Output: `build/app/outputs/flutter-apk/app-release.apk`

### Build AAB (Android App Bundle)

```bash
flutter build appbundle --release
```

Output: `build/app/outputs/bundle/release/app-release.aab`

### Build iOS IPA

```bash
flutter build ios --release
```

## 🧪 Testing

Run all tests:

```bash
flutter test
```

Run tests with coverage:

```bash
flutter test --coverage
```

## 📝 Code Quality

The project uses Flutter linting with the following tools:
- **flutter_lints**: Recommended linting rules

To check code quality:

```bash
flutter analyze
```

## 🐛 Common Issues & Solutions

### Issue: "Unable to locate assets"
**Solution**: Ensure `assets/` folder is properly configured in `pubspec.yaml` and assets exist.

### Issue: "Android SDK not found"
**Solution**: Run `flutter doctor --android-licenses` and accept all licenses.

### Issue: "iOS build fails"
**Solution**: Run `flutter clean` and `flutter pub get`, then rebuild.

## 📱 Supported Platforms

- ✅ Android (API 21+)
- ✅ iOS (11.0+)
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/YourFeature`
3. Commit changes: `git commit -m 'Add YourFeature'`
4. Push to branch: `git push origin feature/YourFeature`
5. Open a Pull Request

### Coding Standards

- Follow Dart style guide
- Use meaningful variable and function names
- Add comments for complex logic
- Keep functions small and focused
- Use const constructors when possible

## 📄 License

This project is private and not licensed for public use. All rights reserved.

## 👨‍💻 Author

**NATO-dotcom** - [GitHub Profile](https://github.com/NATO-dotcom)

## 📞 Support

For support and questions:
- Open an Issue on GitHub
- Check existing documentation
- Review Flutter official documentation at [flutter.dev](https://flutter.dev)

## 🔗 Useful Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Language Guide](https://dart.dev/guides)
- [Material Design Guidelines](https://material.io/design)
- [Flutter Best Practices](https://flutter.dev/docs/testing/best-practices)
- [Null Safety in Dart](https://dart.dev/null-safety)

---

**Happy Coding! ☕** - Made with Flutter
