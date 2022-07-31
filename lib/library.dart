import 'dart:io';

abstract class Data {
  void load(String fileName);
  void save(String fileName);
  void clear();
  get hasData;
  String get data;
  set data(String data);
  //List<String> get fields;
}

abstract class DelimitedData extends Data {
  String get separator;
}

class JSONData extends Data {
  final String filePath;
  String? dataJson;

  @override
  void load(String fileName) {
    File fileName = File('$filePath');
    dataJson = fileName.readAsStringSync();
  }

  @override
  void save(String fileName) {
    File fileName = File('$filePath');
    if (dataJson != null) {
      fileName.writeAsStringSync(dataJson!);
    } else {
      print('Não há dados armazenados na memória.');
    }
  }

  @override
  void clear() {
    dataJson = "";
  }

  @override
  get hasData => dataJson?.isNotEmpty;

  @override
  String get data {
    return dataJson!;
  }

  @override
  set data(String data) {
    dataJson = data;
  }

  //List<String> get fields {}
  JSONData(this.filePath);
}

class XMLData extends Data {
  final String filePath;
  String? dataXml;

  @override
  void load(String fileName) {
    File fileName = File('$filePath');
    dataXml = fileName.readAsStringSync();
  }

  @override
  void save(String fileName) {
    File fileName = File('$filePath');
    if (dataXml != null) {
      fileName.writeAsStringSync(dataXml!);
    } else {
      print('Não há dados armazenados na memória.');
    }
  }

  @override
  void clear() {
    dataXml = "";
  }

  @override
  get hasData => dataXml?.isNotEmpty;

  @override
  String get data {
    return dataXml!;
  }

  @override
  set data(String data) {
    dataXml = data;
  }

  //List<String> get fields {}
  XMLData(this.filePath);
}

class CSVData extends DelimitedData {
  final String filePath;
  String? dataCsv;

  @override
  void load(String fileName) {
    File fileName = File('$filePath');
    dataCsv = fileName.readAsStringSync();
  }

  @override
  void save(String fileName) {
    File fileName = File('$filePath');
    if (dataCsv != null) {
      fileName.writeAsStringSync(dataCsv!);
    } else {
      print('Não há dados armazenados na memória.');
    }
  }

  @override
  void clear() {
    dataCsv = "";
  }

  @override
  get hasData => dataCsv?.isNotEmpty;

  @override
  String get data {
    return dataCsv!;
  }

  @override
  set data(String data) {
    dataCsv = data;
  }

  //List<String> get fields {}

  String get separator {
    return ',';
  }

  CSVData(this.filePath);
}

class TSVData extends DelimitedData {
  final String filePath;
  String? dataTsv;

  @override
  void load(String fileName) {
    File fileName = File('$filePath');
    dataTsv = fileName.readAsStringSync();
  }

  @override
  void save(String fileName) {
    File fileName = File('$filePath');
    if (dataTsv != null) {
      fileName.writeAsStringSync(dataTsv!);
    } else {
      print('Não há dados armazenados na memória.');
    }
  }

  @override
  void clear() {
    dataTsv = "";
  }

  @override
  get hasData => dataTsv?.isNotEmpty;

  @override
  String get data {
    return dataTsv!;
  }

  @override
  set data(String data) {
    dataTsv = data;
  }

  //List<String> get fields {}

  String get separator {
    return String.fromCharCode(9);
  }

  TSVData(this.filePath);
}
