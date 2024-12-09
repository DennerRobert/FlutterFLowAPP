// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future updateDBLocalEtapaOS(List<dynamic> listEtapaOS) async {
  // Add your function code here!
  // fsfd
  final db = SQLiteManager.instance.database;

  void processarOrdensDeServico() {
    if (listEtapaOS is List) {
      for (var ordem in listEtapaOS) {
        final id = ordem['id'];
        final titulo = ordem['titulo'];
        Future<void> upsertOrdemServico(db, String titulo) async {
          await db.rawQuery('''
                INSERT INTO etapa_os(titulo) 
                VALUES(?)
                ON CONFLICT(id) 
                DO UPDATE SET titulo = EXCLUDED.titulo
                ''', [titulo]);
        }
      }
    } else {
      // faz nada
    }
  }
}
