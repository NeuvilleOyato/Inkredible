import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  DateTime? selectedDate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for BookAppointment widget.
  ScrollController? bookAppointment;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode1;
  TextEditingController? nameController1;
  String? Function(BuildContext, String?)? nameController1Validator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for PhoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  DateTime? datePicked;
  // State field(s) for AppointmentMessage widget.
  FocusNode? appointmentMessageFocusNode;
  TextEditingController? appointmentMessageController;
  String? Function(BuildContext, String?)?
      appointmentMessageControllerValidator;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for Testimonials widget.
  ScrollController? testimonials;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode2;
  TextEditingController? nameController2;
  String? Function(BuildContext, String?)? nameController2Validator;
  // State field(s) for ExperienceField widget.
  FocusNode? experienceFieldFocusNode;
  TextEditingController? experienceFieldController;
  String? Function(BuildContext, String?)? experienceFieldControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    columnController1 = ScrollController();
    listViewController = ScrollController();
    bookAppointment = ScrollController();
    columnController2 = ScrollController();
    testimonials = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    columnController1?.dispose();
    listViewController?.dispose();
    bookAppointment?.dispose();
    nameFocusNode1?.dispose();
    nameController1?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

    appointmentMessageFocusNode?.dispose();
    appointmentMessageController?.dispose();

    columnController2?.dispose();
    testimonials?.dispose();
    nameFocusNode2?.dispose();
    nameController2?.dispose();

    experienceFieldFocusNode?.dispose();
    experienceFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
