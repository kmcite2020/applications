###### version 1.0.0+1
```dart
final simpleRM = Simplicity(0);
/// we created a simple reactive reference variable.
TextFormField(
  initialValue: simpleRM(),
  onChanged: simpleRM.call,
)
/// we used it as easy peasy.
```