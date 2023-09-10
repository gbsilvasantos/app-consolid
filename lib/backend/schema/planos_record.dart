import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlanosRecord extends FirestoreRecord {
  PlanosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "valor_app" field.
  String? _valorApp;
  String get valorApp => _valorApp ?? '';
  bool hasValorApp() => _valorApp != null;

  // "nome_plano" field.
  String? _nomePlano;
  String get nomePlano => _nomePlano ?? '';
  bool hasNomePlano() => _nomePlano != null;

  // "valor_stripe" field.
  int? _valorStripe;
  int get valorStripe => _valorStripe ?? 0;
  bool hasValorStripe() => _valorStripe != null;

  void _initializeFields() {
    _valorApp = snapshotData['valor_app'] as String?;
    _nomePlano = snapshotData['nome_plano'] as String?;
    _valorStripe = castToType<int>(snapshotData['valor_stripe']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('planos');

  static Stream<PlanosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlanosRecord.fromSnapshot(s));

  static Future<PlanosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlanosRecord.fromSnapshot(s));

  static PlanosRecord fromSnapshot(DocumentSnapshot snapshot) => PlanosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlanosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlanosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlanosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlanosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlanosRecordData({
  String? valorApp,
  String? nomePlano,
  int? valorStripe,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'valor_app': valorApp,
      'nome_plano': nomePlano,
      'valor_stripe': valorStripe,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlanosRecordDocumentEquality implements Equality<PlanosRecord> {
  const PlanosRecordDocumentEquality();

  @override
  bool equals(PlanosRecord? e1, PlanosRecord? e2) {
    return e1?.valorApp == e2?.valorApp &&
        e1?.nomePlano == e2?.nomePlano &&
        e1?.valorStripe == e2?.valorStripe;
  }

  @override
  int hash(PlanosRecord? e) =>
      const ListEquality().hash([e?.valorApp, e?.nomePlano, e?.valorStripe]);

  @override
  bool isValidKey(Object? o) => o is PlanosRecord;
}
