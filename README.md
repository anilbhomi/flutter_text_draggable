# flutter_text_draggable

A new Flutter package that provide text draggable over widget.

##Usage

[Example] (https://github.com/anilbhomi/flutter_text_draggable/blob/master/example/example.dart)

To use this package : *add the dependency to your [pubspec.yaml] file

```yaml
   dependencies:
     flutter:
       sdk: flutter
     flutter_text_draggable:
```

## Add to your dart file

```dart
import 'package:flutter/material.dart';

class TextOverImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Text Over Image Image Example'),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                    image: DecorationImage(
                        image: new NetworkImage(
                            "https://thumbs.dreamstime.com/b/funny-face-baby-27701492.jpg"),
                        fit: BoxFit.fill)),
              ),
              HomePage()
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Offset offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Positioned(
        left: offset.dx,
        top: offset.dy,
        child: GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                offset = Offset(
                    offset.dx + details.delta.dx, offset.dy + details.delta.dy);
              });
            },
            child: SizedBox(
              width: 300,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text("You Think You Are Funny But You Are Not",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0,
                          color: Colors.red)),
                ),
              ),
            )),
      ),
    );
  }
}
```

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
