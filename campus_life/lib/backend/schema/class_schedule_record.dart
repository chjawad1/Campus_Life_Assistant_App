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

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  // "room" field.
  String? _room;
  String get room => _room ?? '';
  bool hasRoom() => _room != null;

  // "teacher" field.
  DocumentReference? _teacher;
  DocumentReference? get teacher => _teacher;
  bool hasTeacher() => _teacher != null;

  // "students" field.
  List<DocumentReference>? _students;
  List<DocumentReference> get students => _students ?? const [];
  bool hasStudents() => _students != null;

  // "Classname" field.
  String? _classname;
  String get classname => _classname ?? '';
  bool hasClassname() => _classname != null;

  // "classtime" field.
  DateTime? _classtime;
  DateTime? get classtime => _classtime;
  bool hasClasstime() => _classtime != null;

  // "roomno" field.
  String? _roomno;
  String get roomno => _roomno ?? '';
  bool hasRoomno() => _roomno != null;

  void _initializeFields() {
    _startTime = snapshotData['startTime'] as DateTime?;
    _endTime = snapshotData['endTime'] as DateTime?;
    _subject = snapshotData['subject'] as String?;
    _room = snapshotData['room'] as String?;
    _teacher = snapshotData['teacher'] as DocumentReference?;
    _students = getDataList(snapshotData['students']);
    _classname = snapshotData['Classname'] as String?;
    _classtime = snapshotData['classtime'] as DateTime?;
    _roomno = snapshotData['roomno'] as String?;
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
  DateTime? startTime,
  DateTime? endTime,
  String? subject,
  String? room,
  DocumentReference? teacher,
  String? classname,
  DateTime? classtime,
  String? roomno,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'startTime': startTime,
      'endTime': endTime,
      'subject': subject,
      'room': room,
      'teacher': teacher,
      'Classname': classname,
      'classtime': classtime,
      'roomno': roomno,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClassScheduleRecordDocumentEquality
    implements Equality<ClassScheduleRecord> {
  const ClassScheduleRecordDocumentEquality();

  @override
  bool equals(ClassScheduleRecord? e1, ClassScheduleRecord? e2) {
    const listEquality = ListEquality();
    return e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.subject == e2?.subject &&
        e1?.room == e2?.room &&
        e1?.teacher == e2?.teacher &&
        listEquality.equals(e1?.students, e2?.students) &&
        e1?.classname == e2?.classname &&
        e1?.classtime == e2?.classtime &&
        e1?.roomno == e2?.roomno;
  }

  @override
  int hash(ClassScheduleRecord? e) => const ListEquality().hash([
        e?.startTime,
        e?.endTime,
        e?.subject,
        e?.room,
        e?.teacher,
        e?.students,
        e?.classname,
        e?.classtime,
        e?.roomno
      ]);

  @override
  bool isValidKey(Object? o) => o is ClassScheduleRecord;
}
