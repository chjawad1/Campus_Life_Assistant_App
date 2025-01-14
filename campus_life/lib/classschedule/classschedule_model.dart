import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'classschedule_widget.dart' show ClassscheduleWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ClassscheduleModel extends FlutterFlowModel<ClassscheduleWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for classname widget.
  FocusNode? classnameFocusNode;
  TextEditingController? classnameTextController;
  String? Function(BuildContext, String?)? classnameTextControllerValidator;
  // State field(s) for roomnumber widget.
  FocusNode? roomnumberFocusNode;
  TextEditingController? roomnumberTextController;
  String? Function(BuildContext, String?)? roomnumberTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    classnameFocusNode?.dispose();
    classnameTextController?.dispose();

    roomnumberFocusNode?.dispose();
    roomnumberTextController?.dispose();
  }
}
