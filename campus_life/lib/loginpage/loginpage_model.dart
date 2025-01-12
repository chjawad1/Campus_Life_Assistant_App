import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'loginpage_widget.dart' show LoginpageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginpageModel extends FlutterFlowModel<LoginpageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for loginemail widget.
  FocusNode? loginemailFocusNode;
  TextEditingController? loginemailTextController;
  String? Function(BuildContext, String?)? loginemailTextControllerValidator;
  // State field(s) for loginpassword widget.
  FocusNode? loginpasswordFocusNode;
  TextEditingController? loginpasswordTextController;
  late bool loginpasswordVisibility;
  String? Function(BuildContext, String?)? loginpasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    loginpasswordVisibility = false;
  }

  @override
  void dispose() {
    loginemailFocusNode?.dispose();
    loginemailTextController?.dispose();

    loginpasswordFocusNode?.dispose();
    loginpasswordTextController?.dispose();
  }
}
