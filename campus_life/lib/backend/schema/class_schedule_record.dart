import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClassScheduleRecord extends FirestoreRecord {
  ClassScheduleRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  // "room" field.
  String? _room;
  String get room => _room ?? '';
  bool hasRoom() => _room != null;

  // "classtime" field.
  DateTime? _classtime;
  DateTime? get classtime => _classtime;
  bool hasClasstime() => _classtime != null;

  void _initializeFields() {
    _subject = snapshotData['subject'] as String?;
    _room = snapshotData['room'] as String?;
    _classtime = snapshotData['classtime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('class_schedule');

  static Stream<ClassScheduleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClassScheduleRecord.fromSnapshot(s));

  static Future<ClassScheduleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClassScheduleRecord.fromSnapshot(s));

  static ClassScheduleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClassScheduleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClassScheduleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClassScheduleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClassScheduleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClassScheduleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClassScheduleRecordData({
  String? subject,
  String? room,
  DateTime? classtime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'subject': subject,
      'room': room,
      'classtime': classtime,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClassScheduleRecordDocumentEquality
    implements Equality<ClassScheduleRecord> {
  const ClassScheduleRecordDocumentEquality();

  @override
  bool equals(ClassScheduleRecord? e1, ClassScheduleRecord? e2) {
    return e1?.subject == e2?.subject &&
        e1?.room == e2?.room &&
        e1?.classtime == e2?.classtime;
  }

  @override
  int hash(ClassScheduleRecord? e) =>
      const ListEquality().hash([e?.subject, e?.room, e?.classtime]);

  @override
  bool isValidKey(Object? o) => o is ClassScheduleRecord;
}
