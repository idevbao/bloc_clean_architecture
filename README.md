# bloc_clean_architecture

## Requirements

- Dart: 3.0.0
- Flutter SDK: 3.10.6
- Melos: ^3.1.1

## Get the Flutter SDK https://docs.flutter.dev/get-started/install/macos

1.Download SDK
2.Extract unzip
3.Add the flutter tool to your path:

- `echo $PATH`
- `open $HOME`
- command + shift + .
- open .zprofile or .zshrc
- add pwd unzip to .zprofile or .zshrc
    - export PATH="$PATH:`pwd`/flutter/bin"
- Verify that the flutter/bin directory is now in your PATH by running:
    - `echo $PATH`
    - `which flutter`

## Installation FVM Standalone

1. brew install fvm
2. Configuration FVM recommend pwd of your project fvm config --cache-path .fvm/flutter_sdk
    - `fvm config --cache-path <CACHE_PATH>`
    - `fvm config list`
    - `fvm use 3.10.6`

#### IDE settings

1. VS Code
   .vscode/settings.json
   `{
   "dart.flutterSdkPath": ".fvm/flutter_sdk",
   // Remove .fvm files from search
   "search.exclude": {
   "**/.fvm": true
   },
   // Remove from file watching
   "files.watcherExclude": {
   "**/.fvm": true
   }
   }`
2. IntelliJ IDEA or Android Studio

   - Go to Languages & Frameworks > Flutter or search for Flutter and change Flutter SDK path.
   - Copy the absolute path of fvm symbolic link in your root project directory. Example:
     /absolute-project-path/.fvm/flutter_sdk
   - Apply the changes.
   - Restart IDE to see the new settings applied.

## Developing for setup

### App core

    `flutter create app`

### Packages & plugins

1. Create new packages: `flutter create --template=package name_package`
    - data
    - domain
    - initializer
    - resources
    - shared
2. Running "flutter pub get" in workspace packages...
    - `dart pub global activate melos`
    - `flutter pub get`
    - `melos bootstrap`
3. Run app
    - `cd app`


    