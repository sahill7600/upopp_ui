import 'package:demo_upopp/Utils/KeyboardActions.dart';
import 'package:flutter/material.dart';

void showRemoveOverlay(BuildContext context, FocusNode focusNode) {
  bool hasFocus = focusNode.hasFocus;
  if (hasFocus) {
    KeyboardOverlay.showOverlay(context);
  } else {
    KeyboardOverlay.removeOverlay();
  }
}
