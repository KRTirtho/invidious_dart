## Invidious Dart

A library for interacting with the Invidious API for Dart and Flutter.

### Which endpoints are implemented?

- [X] [Endpoints requiring no authentication](https://docs.invidious.io/api/)
- [ ] [Channel Endpoints](https://docs.invidious.io/api/channels_endpoint/)
- [ ] [Authenticated Endpoints](https://docs.invidious.io/api/authenticated-endpoints/)

### Install

Run following command to install the package:

```bash
flutter pub add invidious
```

### Support this project

<a href="https://www.buymeacoffee.com/krtirtho"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=&slug=krtirtho&button_colour=FFDD00&font_colour=000000&font_family=Cookie&outline_colour=000000&coffee_colour=ffffff" /></a>

### Usage

```dart
import 'dart:convert';

import 'package:invidious/invidious.dart';

void main() async {
  final invidious = InvidiousClient(server: 'https://inv.nadeko.net');
  final pretty = JsonEncoder.withIndent(' ');

  print((await invidious.browse.popular()).map(pretty.convert));
  print((await invidious.browse.trending()).map(pretty.convert));

  print(pretty.convert(await invidious.search.suggestions('flutter')));
  print(
    pretty.convert(
      await invidious.search.list('Why Flutter is better than React Native?'),
    ),
  );

  print(pretty.convert(await invidious.videos.get('oBofuVYDoG4')));
  print(pretty.convert(await invidious.videos.captions('oBofuVYDoG4')));
  print(pretty.convert(await invidious.videos.comments('oBofuVYDoG4')));
  print(pretty.convert(await invidious.videos.listByHashtag('flutter')));

  print(pretty.convert(await invidious.stats()));
}
```

### LICENSE

MIT