# App Router - Flutter Navigation with GoRouter

This project demonstrates how to implement navigation in a Flutter app using the `go_router` package. It includes basic authentication handling and dynamic route parameters.

## Technologies Used
- **Flutter**: 3.29.2
- **Java**: 21.0.5 (for Android development)
- **GoRouter**: For declarative routing management

## Features
- **Splash Screen**: Checks authentication status and redirects accordingly.
- **Login Screen**: Simple button to simulate authentication.
- **Home Screen**: Main screen with navigation to a detail screen.
- **Detail Screen**: Displays a dynamic ID passed as a parameter.

## Project Structure
```
/lib
│-- main.dart        # Entry point of the app
│-- app_router.dart  # Defines routes and navigation logic
│-- screens/         # Contains screen implementations
    │-- splash.dart
    │-- login.dart
    │-- home.dart
    │-- detail.dart
```

## Installation
1. Ensure you have Flutter 3.29.2 and Java 21.0.5 installed.
2. Clone this repository:
   ```sh
   git clone https://github.com/achmadsm/go_router_lab.git
   cd go_router_lab
   ```
3. Install dependencies:
   ```sh
   flutter pub get
   ```
4. Run the app:
   ```sh
   flutter run
   ```

## Usage
- The app starts on the **Splash Screen**, which checks login status.
- If logged in, it navigates to the **Home Screen**; otherwise, it goes to **Login Screen**.
- The **Home Screen** contains a button to navigate to the **Detail Screen** with a sample ID.
- The **Detail Screen** displays the ID and provides a button to return home.

## Dependencies
Ensure the following dependency is added in `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter
  go_router: ^X.Y.Z # Replace with the latest version
```

## License
This project is open-source and free to use.

