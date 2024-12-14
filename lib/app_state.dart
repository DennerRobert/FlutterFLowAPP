import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _base64Image = prefs.getString('ff_base64Image') ?? _base64Image;
    });
    _safeInit(() {
      _imagemList = prefs.getStringList('ff_imagemList') ?? _imagemList;
    });
    _safeInit(() {
      _ListaEtapaOS = prefs.getStringList('ff_ListaEtapaOS')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _ListaEtapaOS;
    });
    _safeInit(() {
      _ListaEntradaDados =
          prefs.getStringList('ff_ListaEntradaDados')?.map((x) {
                try {
                  return jsonDecode(x);
                } catch (e) {
                  print("Can't decode persisted json. Error: $e.");
                  return {};
                }
              }).toList() ??
              _ListaEntradaDados;
    });
    _safeInit(() {
      _ListaOrdemServico =
          prefs.getStringList('ff_ListaOrdemServico')?.map((x) {
                try {
                  return jsonDecode(x);
                } catch (e) {
                  print("Can't decode persisted json. Error: $e.");
                  return {};
                }
              }).toList() ??
              _ListaOrdemServico;
    });
    _safeInit(() {
      _testeIDunico = prefs.getInt('ff_testeIDunico') ?? _testeIDunico;
    });
    _safeInit(() {
      _testeTituloUnico =
          prefs.getString('ff_testeTituloUnico') ?? _testeTituloUnico;
    });
    _safeInit(() {
      _ListOSDataType = prefs
              .getStringList('ff_ListOSDataType')
              ?.map((x) {
                try {
                  return GetAllOSStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _ListOSDataType;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _base64Image = '';
  String get base64Image => _base64Image;
  set base64Image(String value) {
    _base64Image = value;
    prefs.setString('ff_base64Image', value);
  }

  List<String> _imagemList = [];
  List<String> get imagemList => _imagemList;
  set imagemList(List<String> value) {
    _imagemList = value;
    prefs.setStringList('ff_imagemList', value);
  }

  void addToImagemList(String value) {
    imagemList.add(value);
    prefs.setStringList('ff_imagemList', _imagemList);
  }

  void removeFromImagemList(String value) {
    imagemList.remove(value);
    prefs.setStringList('ff_imagemList', _imagemList);
  }

  void removeAtIndexFromImagemList(int index) {
    imagemList.removeAt(index);
    prefs.setStringList('ff_imagemList', _imagemList);
  }

  void updateImagemListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    imagemList[index] = updateFn(_imagemList[index]);
    prefs.setStringList('ff_imagemList', _imagemList);
  }

  void insertAtIndexInImagemList(int index, String value) {
    imagemList.insert(index, value);
    prefs.setStringList('ff_imagemList', _imagemList);
  }

  List<dynamic> _ListaEtapaOS = [];
  List<dynamic> get ListaEtapaOS => _ListaEtapaOS;
  set ListaEtapaOS(List<dynamic> value) {
    _ListaEtapaOS = value;
    prefs.setStringList(
        'ff_ListaEtapaOS', value.map((x) => jsonEncode(x)).toList());
  }

  void addToListaEtapaOS(dynamic value) {
    ListaEtapaOS.add(value);
    prefs.setStringList(
        'ff_ListaEtapaOS', _ListaEtapaOS.map((x) => jsonEncode(x)).toList());
  }

  void removeFromListaEtapaOS(dynamic value) {
    ListaEtapaOS.remove(value);
    prefs.setStringList(
        'ff_ListaEtapaOS', _ListaEtapaOS.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromListaEtapaOS(int index) {
    ListaEtapaOS.removeAt(index);
    prefs.setStringList(
        'ff_ListaEtapaOS', _ListaEtapaOS.map((x) => jsonEncode(x)).toList());
  }

  void updateListaEtapaOSAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    ListaEtapaOS[index] = updateFn(_ListaEtapaOS[index]);
    prefs.setStringList(
        'ff_ListaEtapaOS', _ListaEtapaOS.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInListaEtapaOS(int index, dynamic value) {
    ListaEtapaOS.insert(index, value);
    prefs.setStringList(
        'ff_ListaEtapaOS', _ListaEtapaOS.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _ListaEntradaDados = [];
  List<dynamic> get ListaEntradaDados => _ListaEntradaDados;
  set ListaEntradaDados(List<dynamic> value) {
    _ListaEntradaDados = value;
    prefs.setStringList(
        'ff_ListaEntradaDados', value.map((x) => jsonEncode(x)).toList());
  }

  void addToListaEntradaDados(dynamic value) {
    ListaEntradaDados.add(value);
    prefs.setStringList('ff_ListaEntradaDados',
        _ListaEntradaDados.map((x) => jsonEncode(x)).toList());
  }

  void removeFromListaEntradaDados(dynamic value) {
    ListaEntradaDados.remove(value);
    prefs.setStringList('ff_ListaEntradaDados',
        _ListaEntradaDados.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromListaEntradaDados(int index) {
    ListaEntradaDados.removeAt(index);
    prefs.setStringList('ff_ListaEntradaDados',
        _ListaEntradaDados.map((x) => jsonEncode(x)).toList());
  }

  void updateListaEntradaDadosAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    ListaEntradaDados[index] = updateFn(_ListaEntradaDados[index]);
    prefs.setStringList('ff_ListaEntradaDados',
        _ListaEntradaDados.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInListaEntradaDados(int index, dynamic value) {
    ListaEntradaDados.insert(index, value);
    prefs.setStringList('ff_ListaEntradaDados',
        _ListaEntradaDados.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _ListaOrdemServico = [];
  List<dynamic> get ListaOrdemServico => _ListaOrdemServico;
  set ListaOrdemServico(List<dynamic> value) {
    _ListaOrdemServico = value;
    prefs.setStringList(
        'ff_ListaOrdemServico', value.map((x) => jsonEncode(x)).toList());
  }

  void addToListaOrdemServico(dynamic value) {
    ListaOrdemServico.add(value);
    prefs.setStringList('ff_ListaOrdemServico',
        _ListaOrdemServico.map((x) => jsonEncode(x)).toList());
  }

  void removeFromListaOrdemServico(dynamic value) {
    ListaOrdemServico.remove(value);
    prefs.setStringList('ff_ListaOrdemServico',
        _ListaOrdemServico.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromListaOrdemServico(int index) {
    ListaOrdemServico.removeAt(index);
    prefs.setStringList('ff_ListaOrdemServico',
        _ListaOrdemServico.map((x) => jsonEncode(x)).toList());
  }

  void updateListaOrdemServicoAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    ListaOrdemServico[index] = updateFn(_ListaOrdemServico[index]);
    prefs.setStringList('ff_ListaOrdemServico',
        _ListaOrdemServico.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInListaOrdemServico(int index, dynamic value) {
    ListaOrdemServico.insert(index, value);
    prefs.setStringList('ff_ListaOrdemServico',
        _ListaOrdemServico.map((x) => jsonEncode(x)).toList());
  }

  int _testeIDunico = 999;
  int get testeIDunico => _testeIDunico;
  set testeIDunico(int value) {
    _testeIDunico = value;
    prefs.setInt('ff_testeIDunico', value);
  }

  String _testeTituloUnico = 'Teste Etapa unica Titulo';
  String get testeTituloUnico => _testeTituloUnico;
  set testeTituloUnico(String value) {
    _testeTituloUnico = value;
    prefs.setString('ff_testeTituloUnico', value);
  }

  List<GetAllOSStruct> _ListOSDataType = [];
  List<GetAllOSStruct> get ListOSDataType => _ListOSDataType;
  set ListOSDataType(List<GetAllOSStruct> value) {
    _ListOSDataType = value;
    prefs.setStringList(
        'ff_ListOSDataType', value.map((x) => x.serialize()).toList());
  }

  void addToListOSDataType(GetAllOSStruct value) {
    ListOSDataType.add(value);
    prefs.setStringList('ff_ListOSDataType',
        _ListOSDataType.map((x) => x.serialize()).toList());
  }

  void removeFromListOSDataType(GetAllOSStruct value) {
    ListOSDataType.remove(value);
    prefs.setStringList('ff_ListOSDataType',
        _ListOSDataType.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromListOSDataType(int index) {
    ListOSDataType.removeAt(index);
    prefs.setStringList('ff_ListOSDataType',
        _ListOSDataType.map((x) => x.serialize()).toList());
  }

  void updateListOSDataTypeAtIndex(
    int index,
    GetAllOSStruct Function(GetAllOSStruct) updateFn,
  ) {
    ListOSDataType[index] = updateFn(_ListOSDataType[index]);
    prefs.setStringList('ff_ListOSDataType',
        _ListOSDataType.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInListOSDataType(int index, GetAllOSStruct value) {
    ListOSDataType.insert(index, value);
    prefs.setStringList('ff_ListOSDataType',
        _ListOSDataType.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
