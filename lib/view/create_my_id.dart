import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CreateMyId extends StatelessWidget {
  dynamic bytes = {"data", "1234"};

  @override
  Widget build(BuildContext context) {
    return QrImage(
      data: bytes.toString(),
      version: QrVersions.auto,
      gapless: false,
      size: 200,
    );
  }
}
