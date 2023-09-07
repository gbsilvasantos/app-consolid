import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrganizacoesRecord extends FirestoreRecord {
  OrganizacoesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "tamanho" field.
  String? _tamanho;
  String get tamanho => _tamanho ?? '';
  bool hasTamanho() => _tamanho != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _tamanho = snapshotData['tamanho'] as String?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('organizacoes');

  static Stream<OrganizacoesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrganizacoesRecord.fromSnapshot(s));

  static Future<OrganizacoesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrganizacoesRecord.fromSnapshot(s));

  static OrganizacoesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrganizacoesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrganizacoesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrganizacoesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrganizacoesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrganizacoesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrganizacoesRecordData({
  String? nome,
  String? tamanho,
  DocumentReference? usuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'tamanho': tamanho,
      'usuario': usuario,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrganizacoesRecordDocumentEquality
    implements Equality<OrganizacoesRecord> {
  const OrganizacoesRecordDocumentEquality();

  @override
  bool equals(OrganizacoesRecord? e1, OrganizacoesRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.tamanho == e2?.tamanho &&
        e1?.usuario == e2?.usuario;
  }

  @override
  int hash(OrganizacoesRecord? e) =>
      const ListEquality().hash([e?.nome, e?.tamanho, e?.usuario]);

  @override
  bool isValidKey(Object? o) => o is OrganizacoesRecord;
}
