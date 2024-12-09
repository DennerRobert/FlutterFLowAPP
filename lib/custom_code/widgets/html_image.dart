// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:flutter/foundation.dart'; // Add this import statement for compute

class HtmlImage extends StatefulWidget {
  const HtmlImage({
    Key? key,
    this.width,
    this.height,
    this.base64Image,
    this.borde,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? base64Image;
  final double? borde;

  @override
  _HtmlImageState createState() => _HtmlImageState();
}

class _HtmlImageState extends State<HtmlImage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double imageWidth = widget.width ?? constraints.maxWidth;
        double imageHeight = widget.height ?? constraints.maxHeight;

        return Container(
          width: imageWidth,
          height: imageHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.borde ?? 0),
          ),
          child: FutureBuilder<Uint8List>(
            future: decodeBase64Image(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Erro ao carregar a imagem');
              } else {
                Uint8List imageBytes = snapshot.data!;

                return imageBytes.isNotEmpty
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(widget.borde ?? 0),
                        child: Image.memory(
                          imageBytes,
                          fit: BoxFit.cover,
                        ),
                      )
                    : SizedBox();
              }
            },
          ),
        );
      },
    );
  }

  Future<Uint8List> decodeBase64Image() async {
    return await compute(base64Decode, widget.base64Image!);
  }
}
