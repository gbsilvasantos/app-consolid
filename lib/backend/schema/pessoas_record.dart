import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PessoasRecord extends FirestoreRecord {
  PessoasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "nascimento" field.
  String? _nascimento;
  String get nascimento => _nascimento ?? '';
  bool hasNascimento() => _nascimento != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "organizacao" field.
  DocumentReference? _organizacao;
  DocumentReference? get organizacao => _organizacao;
  bool hasOrganizacao() => _organizacao != null;

  // "batizado" field.
  String? _batizado;
  String get batizado => _batizado ?? '';
  bool hasBatizado() => _batizado != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "logradouro" field.
  String? _logradouro;
  String get logradouro => _logradouro ?? '';
  bool hasLogradouro() => _logradouro != null;

  // "complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  bool hasComplemento() => _complemento != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  bool hasNumero() => _numero != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "uf" field.
  String? _uf;
  String get uf => _uf ?? '';
  bool hasUf() => _uf != null;

  // "faceid" field.
  String? _faceid;
  String get faceid => _faceid ?? '';
  bool hasFaceid() => _faceid != null;

  // "data_criacao" field.
  DateTime? _dataCriacao;
  DateTime? get dataCriacao => _dataCriacao;
  bool hasDataCriacao() => _dataCriacao != null;

  // "nome_organizacao" field.
  String? _nomeOrganizacao;
  String get nomeOrganizacao => _nomeOrganizacao ?? '';
  bool hasNomeOrganizacao() => _nomeOrganizacao != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _email = snapshotData['email'] as String?;
    _telefone = snapshotData['telefone'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _tipo = snapshotData['tipo'] as String?;
    _nascimento = snapshotData['nascimento'] as String?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _organizacao = snapshotData['organizacao'] as DocumentReference?;
    _batizado = snapshotData['batizado'] as String?;
    _cep = snapshotData['cep'] as String?;
    _logradouro = snapshotData['logradouro'] as String?;
    _complemento = snapshotData['complemento'] as String?;
    _numero = snapshotData['numero'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _uf = snapshotData['uf'] as String?;
    _faceid = snapshotData['faceid'] as String?;
    _dataCriacao = snapshotData['data_criacao'] as DateTime?;
    _nomeOrganizacao = snapshotData['nome_organizacao'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pessoas');

  static Stream<PessoasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PessoasRecord.fromSnapshot(s));

  static Future<PessoasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PessoasRecord.fromSnapshot(s));

  static PessoasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PessoasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PessoasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PessoasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PessoasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PessoasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPessoasRecordData({
  String? nome,
  String? email,
  String? telefone,
  String? photoUrl,
  String? tipo,
  String? nascimento,
  DocumentReference? usuario,
  DocumentReference? organizacao,
  String? batizado,
  String? cep,
  String? logradouro,
  String? complemento,
  String? numero,
  String? bairro,
  String? cidade,
  String? uf,
  String? faceid,
  DateTime? dataCriacao,
  String? nomeOrganizacao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'email': email,
      'telefone': telefone,
      'photo_url': photoUrl,
      'tipo': tipo,
      'nascimento': nascimento,
      'usuario': usuario,
      'organizacao': organizacao,
      'batizado': batizado,
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'numero': numero,
      'bairro': bairro,
      'cidade': cidade,
      'uf': uf,
      'faceid': faceid,
      'data_criacao': dataCriacao,
      'nome_organizacao': nomeOrganizacao,
    }.withoutNulls,
  );

  return firestoreData;
}

class PessoasRecordDocumentEquality implements Equality<PessoasRecord> {
  const PessoasRecordDocumentEquality();

  @override
  bool equals(PessoasRecord? e1, PessoasRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.email == e2?.email &&
        e1?.telefone == e2?.telefone &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.tipo == e2?.tipo &&
        e1?.nascimento == e2?.nascimento &&
        e1?.usuario == e2?.usuario &&
        e1?.organizacao == e2?.organizacao &&
        e1?.batizado == e2?.batizado &&
        e1?.cep == e2?.cep &&
        e1?.logradouro == e2?.logradouro &&
        e1?.complemento == e2?.complemento &&
        e1?.numero == e2?.numero &&
        e1?.bairro == e2?.bairro &&
        e1?.cidade == e2?.cidade &&
        e1?.uf == e2?.uf &&
        e1?.faceid == e2?.faceid &&
        e1?.dataCriacao == e2?.dataCriacao &&
        e1?.nomeOrganizacao == e2?.nomeOrganizacao;
  }

  @override
  int hash(PessoasRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.email,
        e?.telefone,
        e?.photoUrl,
        e?.tipo,
        e?.nascimento,
        e?.usuario,
        e?.organizacao,
        e?.batizado,
        e?.cep,
        e?.logradouro,
        e?.complemento,
        e?.numero,
        e?.bairro,
        e?.cidade,
        e?.uf,
        e?.faceid,
        e?.dataCriacao,
        e?.nomeOrganizacao
      ]);

  @override
  bool isValidKey(Object? o) => o is PessoasRecord;
}
