# Best way to proceed analyzer

A Flutter package designed to analyze AI output and store results in Firebase. This package provides a seamless integration with Firebase for efficient data management and retrieval of AI analysis results.

## Features

- **AI Output Analysis**: Analyze outputs from AI models and generate insightful results.
- **Firebase Integration**: Store and retrieve analysis results from Firebase.
- **User-friendly API**: Simple and easy-to-use API for developers.
- **Customization**: Flexible configuration options for various use cases.

## Getting started

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Firebase Account: [Create a Firebase project](https://firebase.google.com)
- Dart: [Install Dart](https://dart.dev/get-dart)

### Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  bestwaytoproceedanalyze:
    git:
      url: https://github.com/riadhrahma/bestwaytoproceedanalyze.git
      ref: dev
  firebase_core: latest
  cloud_firestore: latest
```

### Setup Firebase

1. Follow the official Firebase setup guide for Flutter: [Add Firebase to your Flutter app](https://firebase.google.com/docs/flutter/setup)
2. Initialize Firebase in your Flutter project.

## Usage

Import the package and initialize it in your project:

```dart
WayData wayData = WayData.fromJson({});
  final BestWayAnalyze analyzer= BestWayAnalyze(wayData);
  Future<void > startAnalyze() async {
    final result = await analyzer.analyze(saveData: true);
    log(result.name);
  }
```



## Additional information

For more information, please visit our [documentation](https://github.com/riadhrahma/bestwaytoproceedanalyze/doc).

### Contributing

We welcome contributions!

### Filing Issues

If you encounter any issues, please file them [here](https://github.com/riadhrahma/bestwaytoproceedanalyze/issues). Our team will respond as quickly as possible.

For further inquiries or support, reach out to [gharbiriadh16@gmail.com](mailto:gharbiriadh16@gmail.com).

Happy coding!