import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'signuppage_widget.dart' show SignuppageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignuppageModel extends FlutterFlowModel<SignuppageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for signupemail widget.
  FocusNode? signupemailFocusNode;
  TextEditingController? signupemailTextController;
  String? Function(BuildContext, String?)? signupemailTextControllerValidator;
  // State field(s) for signuppassword widget.
  FocusNode? signuppasswordFocusNode;
  TextEditingController? signuppasswordTextController;
  late bool signuppasswordVisibility;
  String? Function(BuildContext, String?)?
      signuppasswordTextControllerValidator;
  // State field(s) for signupcfpassword widget.
  FocusNode? signupcfpasswordFocusNode;
  TextEditingController? signupcfpasswordTextController;
  late bool signupcfpasswordVisibility;
  String? Function(BuildContext, String?)?
      signupcfpasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signuppasswordVisibility = false;
    signupcfpasswordVisibility = false;
  }

  @override
  void dispose() {
    signupemailFocusNode?.dispose();
    signupemailTextController?.dispose();

    signuppasswordFocusNode?.dispose();
    signuppasswordTextController?.dispose();

    signupcfpasswordFocusNode?.dispose();
    signupcfpasswordTextController?.dispose();
  }
}
