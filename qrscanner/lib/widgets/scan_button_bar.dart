import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0, // QUITAR SOMBRA DEL FLOATING
      child: Icon(Icons.filter_center_focus),
      onPressed: () async {
        // String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        //     '#3D8BEF', 'CANCEL_BUTTON_TEXT', false, ScanMode.QR);
        final barcodeScanRes = 'https://fernando-herrera.com';

        print(barcodeScanRes);
      },
    );
  }
}
