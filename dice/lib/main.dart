import "package:dice/GradientContainer.dart";
import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          //gradation color
          body: GradientContainer.withInstagramStyleGradient()),
    ),
  );
}
