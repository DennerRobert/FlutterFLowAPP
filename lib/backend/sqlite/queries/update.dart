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

/// BEGIN UPDATE ALL
Future performUpdateAll(
  Database database, {
  String? titulo,
  String? endereco,
}) {
  final query = '''
INSERT INTO ordemServico(titulo, endereco) VALUES(?, ?)
  ON CONFLICT(id) DO UPDATE SET titulo = EXCLUDED.'$titulo', endereco = EXCLUDED.'$endereco';
''';
  return database.rawQuery(query);
}

/// END UPDATE ALL
