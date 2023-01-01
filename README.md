# listview_cubit_hooks

A Flutter project that demonstrates the usage of ListView with cubits and hooks.
Also with local database storage using Hive.

Check out Medium tutorial for screenshots and explanations - 

<img width="880" alt="flutter_tutorial_app_cubit_hooks_hive" src="https://user-images.githubusercontent.com/954738/210174999-afbcd5cd-9c9b-47ee-89ec-ab8cb3a72f13.png">

## Getting Started

For generating injectables & freezed files:

flutter pub run build_runner build --delete-conflicting-outputs

For generating local keys for Easy Localization:

flutter pub run easy_localization:generate --source-dir ./assets/translations -f keys -o local_keys.g.dart
