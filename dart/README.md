# Boggle Board Generator API - Dart/Flutter Client

Boggle Board Generator creates random Boggle game boards with authentic dice configurations, HTML rendering, and downloadable PNG images.

[![pub package](https://img.shields.io/pub/v/apiverve_boggleboardgenerator.svg)](https://pub.dev/packages/apiverve_boggleboardgenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Boggle Board Generator API](https://apiverve.com/marketplace/boggleboardgenerator?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_boggleboardgenerator: ^1.1.13
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_boggleboardgenerator/apiverve_boggleboardgenerator.dart';

void main() async {
  final client = BoggleboardgeneratorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'size': 4
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "board": [
      [
        "Qu",
        "X",
        "H",
        "Y"
      ],
      [
        "U",
        "S",
        "A",
        "A"
      ],
      [
        "F",
        "R",
        "I",
        "P"
      ],
      [
        "N",
        "I",
        "D",
        "W"
      ]
    ],
    "size": 4,
    "html": "<html><head><title>Boggle Board</title><style>table {border-collapse: collapse; width: 320px; height: 320px; font-family: Arial, sans-serif;}td {text-align: center; width: 80px; height: 80px; padding: 0; border: 2px solid #333; background-color: #f5e6d3; font-size: 24px; font-weight: bold; color: #2c1810;}</style></head><body><table><tr><td>Qu</td><td>X</td><td>H</td><td>Y</td></tr><tr><td>U</td><td>S</td><td>A</td><td>A</td></tr><tr><td>F</td><td>R</td><td>I</td><td>P</td></tr><tr><td>N</td><td>I</td><td>D</td><td>W</td></tr></table></body></html>",
    "image": {
      "imageName": "bc827ac0-ef2c-40e4-81a3-2fc6477c5fd2_boggle.png",
      "format": ".png",
      "downloadURL": "https://storage.googleapis.com/apiverve.appspot.com/boggleboardgenerator/bc827ac0-ef2c-40e4-81a3-2fc6477c5fd2_boggle.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1763884450&Signature=WBy6c0%2FJsQiYNGTbjhn46R%2F9NEBMc1ENfFHpnBSEgLajqvdygFcjfuyay4q9jTkryOyAGjmOrVX%2F3TkFh6XT6sefI3s9hlEd6w9EiVFe4j6Y0zRKgJbxINkQHTyTBUDRmFu0VkPrrvnObrQbrcxK0pTLSGAFWLfut913zt5ESt8mzcGOc9aMIcISbAFw8KfTt5CIKOddGKqhYtRwPeo2uTVNd7CJ4EdEYuJSYnchclOFsybtCSQJNN7xqGgttsvuvD2bWKPIPnkVrooCIznaoY09Wwyt216S59UH8gkGXPRhZNEEIjxnfZ4SVcOCM2ySYrd3CaGSBttp0DeR8yW1yg%3D%3D",
      "expires": 1763884450399
    }
  }
}
```

## API Reference

- **API Home:** [Boggle Board Generator API](https://apiverve.com/marketplace/boggleboardgenerator?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/boggleboardgenerator](https://docs.apiverve.com/ref/boggleboardgenerator?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
