import 'dart:io';
import 'package:aval2/library.dart';

void main() {
  String listaFormatos = '''
  - json
  - xml
  - csv
  - tsv
''';
  String listaOperacoes = '''
  - carregar
  - salvar
  - limpar
  - vazio
  - mostrar
  - retornar
''';

  print('Escolha o tipo de arquivo:');
  print(listaFormatos);
  String? formato = stdin.readLineSync();

  switch (formato) {
    case "json":
      JSONData json = JSONData('files/users.json');
      json.load(json.filePath);
      print('Escolha a operação');
      print(listaOperacoes);
      String? operacao = stdin.readLineSync();
      switch (operacao) {
        case "salvar":
          json.save(json.filePath);
          break;
        case "limpar":
          json.clear();
          break;
        case "vazio":
          json.hasData;
          print(json.hasData);
          break;
        case "mostrar":
          json.data;
          print(json.data);
          break;
      }
      break;
    case "xml":
      XMLData xml = XMLData('files/users.xml');
      xml.load('files/users.xml');
      print(listaOperacoes);
      print('Escolha a operação');
      String? operacao = stdin.readLineSync();
      switch (operacao) {
        case "salvar":
          xml.save('files/users.xml');
          break;
        case "limpar":
          xml.clear();
          break;
        case "vazio":
          xml.hasData;
          print(xml.hasData);
          break;
        case "mostrar":
          xml.data;
          print(xml.data);
          break;
      }
      break;
    case "csv":
      CSVData csv = CSVData('files/users.csv');
      csv.load('files/users.csv');
      print(listaOperacoes);
      print('Escolha a operação');
      String? operacao = stdin.readLineSync();
      switch (operacao) {
        case "salvar":
          csv.save('files/users.csv');
          break;
        case "limpar":
          csv.clear();
          break;
        case "vazio":
          csv.hasData;
          print(csv.hasData);
          break;
        case "mostrar":
          csv.data;
          print(csv.data);
          break;
        case "separador":
          csv.separator;
          print(csv.separator);
          break;
      }
      break;
    case "tsv":
      TSVData tsv = TSVData('files/users.tsv');
      tsv.load('files/users.tsv');
      print(listaOperacoes);
      print('Escolha a operação');
      String? operacao = stdin.readLineSync();
      switch (operacao) {
        case "salvar":
          tsv.save('files/users.tsv');
          break;
        case "limpar":
          tsv.clear();
          break;
        case "vazio":
          tsv.hasData;
          print(tsv.hasData);
          break;
        case "mostrar":
          tsv.data;
          print(tsv.data);
          break;
        case "separador":
          tsv.separator;
          print(tsv.separator);
          break;
      }
      break;
  }
  print(
      'Equipe: Bernardo Francisco das Chagas neto e Lucas Frota de Sousa Minduri');
}
