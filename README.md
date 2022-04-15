# Flutter Clean Architecture Template
Flutter boilerplate template using clean architecture, and meedu state management.

# Instructions for use
1. Set the project name in the pubspec.yaml file.
2. Replace all imported packages starting with 'flutter_template' with the project name set in step 1.
3. Go to android folder, and set your custom app package name.
4. Go to iOS folder, and set your custom app package name.
5. Run app project on android and iOS device to validade all this are ok.

# Template File Structure
lib
├── app.dart
├── env.dart
├── generated_plugin_registrant.dart
├── main.dart
└── src
    ├── data
    │   ├── native_code
    │   └── providers
    │       ├── facades
    │       ├── local
    │       │   └── shared_preference_api.dart
    │       ├── remote
    │       └── repositories_implementation
    │           └──  shared_preferences_repository_implementation.dart
    ├── domain
    │   ├── models
    │   └── repositories
    │       └── shared_preferences_repository.dart
    ├── inject_dependencies.dart
    ├── localization
    │   └── app_en.arb
    ├── ui
    │   ├── pages
    │   │   ├── home
    │   │   │   ├── home_controller.dart
    │   │   │   └── home_page.dart
    │   │   ├── sample_feature
    │   │   │   ├── sample_item.dart
    │   │   │   ├── sample_item_details_view.dart
    │   │   │   └── sample_item_list_view.dart
    │   │   ├── settings
    │   │   │   ├── settings_controller.dart
    │   │   │   ├── settings_service.dart
    │   │   │   └── settings_view.dart
    │   │   └── splash
    │   │       ├── splash_controller.dart
    │   │       └── splash_page.dart
    │   └── routes
    │       ├── pages.dart
    │       └── routes.dart
    └── utils