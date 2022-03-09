
import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// referência p/ coleção crises
final CollectionReference _criseCollectionRef = _firestore.collection('crises');

class DatabaseService {
  // métod que adiciona uma nova crise ao database
  static Future<void> addCrise(
      {required DateTime date,
      required String gatilho,
      required String sintomas,
      required String acao}) async {
    DocumentReference docRef = _criseCollectionRef.doc();

    Map<String, dynamic> data = <String, dynamic>{
      "date": date,
      "gatilho": gatilho,
      "sintomas": sintomas,
      "acao": acao
    };

    await docRef
        .set(data)
        .whenComplete(() => print('crise adicionada com sucesso'))
        .catchError((e) => print(e));
  }

  // ler data do db

  static Stream<QuerySnapshot> readCrises() {
    CollectionReference crisesCollection = _criseCollectionRef;
    return crisesCollection.snapshots();
  }

  // editar uma entrada
  static Future<void> updateCrise(
      {required DateTime date,
      required String gatilho,
      required String sintomas,
      required String acao,
      required String docId}) async {
    DocumentReference docRef = _criseCollectionRef.doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      "date": date,
      "gatilho": gatilho,
      "sintomas": sintomas,
      "acao": acao
    };

    await docRef
        .update(data)
        .whenComplete(() => print('entrada atualizada'))
        .catchError((e) => print(e));
  }

  // deletar entrada

  static Future<void> deleteCrise({required String docId}) async {
    DocumentReference docRef = _criseCollectionRef.doc(docId);

    await docRef
        .delete()
        .whenComplete(() => print('entrada deletada'))
        .catchError((e) => print(e));
  }
}
