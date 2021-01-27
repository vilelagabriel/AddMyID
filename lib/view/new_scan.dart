import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'dart:async';

Future<String> scanQRcode() async {
  String barcodeScanRes;

  barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
      "#ff6666", "cancel", true, ScanMode.QR);
  print(barcodeScanRes);
  return barcodeScanRes;
}
