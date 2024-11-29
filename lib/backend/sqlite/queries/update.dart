import 'package:sqflite/sqflite.dart';

/// BEGIN INSERTIMGIDSELECIONADO
Future performInsertIMGidSelecionado(
  Database database, {
  String? uploadimagem,
  String? idSelecionado,
}) {
  final query = '''
INSERT INTO imagens(imagem, fk_id_os) VALUES('$uploadimagem', '$idSelecionado');
''';
  return database.rawQuery(query);
}

/// END INSERTIMGIDSELECIONADO
