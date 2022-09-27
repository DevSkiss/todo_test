# TODO TEST

## Workspace Versions

```bash
[✓] Flutter (Channel stable, 3.3.2, on macOS 12.6 21G115 darwin-arm, locale
    en-BE)
[✓] Android toolchain - develop for Android devices (Android SDK version 31.0.0)
[✓] Xcode - develop for iOS and macOS (Xcode 14.0)
[✓] Chrome - develop for the web
[✓] Android Studio (version 2021.2)
[✓] VS Code (version 1.71.2)
[✓] Connected device (3 available)
[✓] HTTP Host Availability
```

## Important Libraries being used

Please read on these libraries

- BLoC (we use Cubits)
- Sqflite
- Json Serializable
- Freezed

## Getting Started

This project uses the ff libraries:

### Build Runner (freezed, json_serializable, retrofit)

Build Runner is a library used to generate code. Ensure that you run the ff commands before trying to run the project

```bash
# This command fetches the necessary Dependencies
flutter pub get
# This command generates the necessary dart files (json parsing, models, etc)
flutter pub run build_runner build --delete-conflicting-outputs;
#or you can run 
source scripts/rebuild.sh
```

then lastly run the flutter app

```bash
# This will run the app on your default device (e.g physical device, emulators or simulator(macOS))
flutter run
```
