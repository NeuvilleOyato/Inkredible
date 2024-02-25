import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  DateTime? selectedDate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for ExperienceField widget.
  FocusNode? experienceFieldFocusNode1;
  TextEditingController? experienceFieldController1;
  String? Function(BuildContext, String?)? experienceFieldController1Validator;
  // State field(s) for ExperienceField widget.
  FocusNode? experienceFieldFocusNode2;
  TextEditingController? experienceFieldController2;
  String? Function(BuildContext, String?)? experienceFieldController2Validator;
  // State field(s) for ExperienceField widget.
  FocusNode? experienceFieldFocusNode3;
  TextEditingController? experienceFieldController3;
  String? Function(BuildContext, String?)? experienceFieldController3Validator;
  // State field(s) for appointmentDate widget.
  FocusNode? appointmentDateFocusNode;
  TextEditingController? appointmentDateController;
  String? Function(BuildContext, String?)? appointmentDateControllerValidator;
  DateTime? datePicked;
  // State field(s) for AppointmentMessage widget.
  FocusNode? appointmentMessageFocusNode;
  TextEditingController? appointmentMessageController;
  String? Function(BuildContext, String?)?
      appointmentMessageControllerValidator;
  // State field(s) for ExperienceField widget.
  FocusNode? experienceFieldFocusNode4;
  TextEditingController? experienceFieldController4;
  String? Function(BuildContext, String?)? experienceFieldController4Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    experienceFieldFocusNode1?.dispose();
    experienceFieldController1?.dispose();

    experienceFieldFocusNode2?.dispose();
    experienceFieldController2?.dispose();

    experienceFieldFocusNode3?.dispose();
    experienceFieldController3?.dispose();

    appointmentDateFocusNode?.dispose();
    appointmentDateController?.dispose();

    appointmentMessageFocusNode?.dispose();
    appointmentMessageController?.dispose();

    experienceFieldFocusNode4?.dispose();
    experienceFieldController4?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
