import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'cbecomeproviderascompany4pricing_model.dart';
export 'cbecomeproviderascompany4pricing_model.dart';

class Cbecomeproviderascompany4pricingWidget extends StatefulWidget {
  const Cbecomeproviderascompany4pricingWidget({super.key});

  @override
  State<Cbecomeproviderascompany4pricingWidget> createState() =>
      _Cbecomeproviderascompany4pricingWidgetState();
}

class _Cbecomeproviderascompany4pricingWidgetState
    extends State<Cbecomeproviderascompany4pricingWidget> {
  late Cbecomeproviderascompany4pricingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => Cbecomeproviderascompany4pricingModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textController6 ??= TextEditingController();
    _model.textFieldFocusNode6 ??= FocusNode();

    _model.textController7 ??= TextEditingController();
    _model.textFieldFocusNode7 ??= FocusNode();

    _model.textController8 ??= TextEditingController();
    _model.textFieldFocusNode8 ??= FocusNode();

    _model.textController9 ??= TextEditingController();
    _model.textFieldFocusNode9 ??= FocusNode();

    _model.textController10 ??= TextEditingController();
    _model.textFieldFocusNode10 ??= FocusNode();

    _model.textController11 ??= TextEditingController();
    _model.textFieldFocusNode11 ??= FocusNode();

    _model.textController12 ??= TextEditingController();
    _model.textFieldFocusNode12 ??= FocusNode();

    _model.textController13 ??= TextEditingController();
    _model.textFieldFocusNode13 ??= FocusNode();

    _model.textController14 ??= TextEditingController();
    _model.textFieldFocusNode14 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Visibility(
            visible: responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ),
            child: StreamBuilder<List<PricingtemplateRecord>>(
              stream: queryPricingtemplateRecord(
                singleRecord: true,
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    ),
                  );
                }
                List<PricingtemplateRecord>
                    listViewPCPricingtemplateRecordList = snapshot.data!;
                // Return an empty Container when the item does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final listViewPCPricingtemplateRecord =
                    listViewPCPricingtemplateRecordList.isNotEmpty
                        ? listViewPCPricingtemplateRecordList.first
                        : null;

                return ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 88.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'hf6ca7m2' /* Info */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lato',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 29.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    55.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '4hqsth32' /* Bank Account */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        fontSize: 29.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    55.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'bl9zlykk' /* Gallery */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 29.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      55.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'ltp6ntz7' /* Pricing */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          color: const Color(0xFF4F0B92),
                                          fontSize: 29.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                              const Align(
                                alignment: AlignmentDirectional(0.0, 0.1),
                                child: Icon(
                                  Icons.arrow_right,
                                  color: Color(0xFF4F0B92),
                                  size: 33.0,
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      55.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'eb93svmb' /* Terms */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 29.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      55.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'ca428gyb' /* Publish */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 29.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 33.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 99.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            99.0, 0.0, 444.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 2399.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 99.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 300.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          ToggleIcon(
                                                            onPressed:
                                                                () async {
                                                              await listViewPCPricingtemplateRecord
                                                                  .reference
                                                                  .update({
                                                                ...mapToFirestore(
                                                                  {
                                                                    'PERHOUR':
                                                                        !listViewPCPricingtemplateRecord
                                                                            .perhour,
                                                                  },
                                                                ),
                                                              });
                                                            },
                                                            value:
                                                                listViewPCPricingtemplateRecord!
                                                                    .perhour,
                                                            onIcon: Icon(
                                                              Icons.check_box,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 24.0,
                                                            ),
                                                            offIcon: Icon(
                                                              Icons
                                                                  .check_box_outline_blank,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'bbhbh1e6' /* Per Hour */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lato',
                                                                  fontSize:
                                                                      24.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child: SizedBox(
                                                                width: 200.0,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .textController1,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode1,
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        true,
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'ikioy3z5' /* Name your packet */,
                                                                    ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lato',
                                                                        fontSize:
                                                                            20.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  validator: _model
                                                                      .textController1Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child:
                                                                  FlutterFlowDropDown<
                                                                      String>(
                                                                multiSelectController: _model
                                                                        .dropDownValueController1 ??=
                                                                    FormListFieldController<
                                                                        String>(_model
                                                                            .dropDownValue1 ??=
                                                                        List<
                                                                            String>.from(
                                                                  listViewPCPricingtemplateRecord
                                                                          .locationPERHOUR ??
                                                                      [],
                                                                )),
                                                                options: [
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'ufqnm53g' /* At Seller's Address */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'ol6isee4' /* At Buyer's Address */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    's9x8j97d' /* At the Address in the Descript... */,
                                                                  )
                                                                ],
                                                                width: 200.0,
                                                                height: 40.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lato',
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  'hbgcicna' /* Select Location */,
                                                                ),
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                elevation: 2.0,
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderWidth:
                                                                    0.0,
                                                                borderRadius:
                                                                    8.0,
                                                                margin: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                                hidesUnderline:
                                                                    true,
                                                                isOverButton:
                                                                    false,
                                                                isSearchable:
                                                                    false,
                                                                isMultiSelect:
                                                                    true,
                                                                onMultiSelectChanged: (val) =>
                                                                    safeSetState(() =>
                                                                        _model.dropDownValue1 =
                                                                            val),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child: SizedBox(
                                                                width: 200.0,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .textController2,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode2,
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        true,
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lato',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'm8zaorhd' /* Price per Hour */,
                                                                    ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lato',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lato',
                                                                        fontSize:
                                                                            20.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  validator: _model
                                                                      .textController2Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 151.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child: SizedBox(
                                                                width: 200.0,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .textController3,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode3,
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        true,
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'tvorldg7' /* Describe the details of your o... */,
                                                                    ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lato',
                                                                        fontSize:
                                                                            20.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  maxLines: 4,
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  validator: _model
                                                                      .textController3Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 99.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 602.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(
                                                          0.0,
                                                          2.0,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          ToggleIcon(
                                                            onPressed:
                                                                () async {
                                                              await listViewPCPricingtemplateRecord
                                                                  .reference
                                                                  .update({
                                                                ...mapToFirestore(
                                                                  {
                                                                    'PERSESSION':
                                                                        !listViewPCPricingtemplateRecord
                                                                            .persession,
                                                                  },
                                                                ),
                                                              });
                                                            },
                                                            value:
                                                                listViewPCPricingtemplateRecord
                                                                    .persession,
                                                            onIcon: Icon(
                                                              Icons.check_box,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 24.0,
                                                            ),
                                                            offIcon: Icon(
                                                              Icons
                                                                  .check_box_outline_blank,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'vga8r5h4' /* Per Session */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lato',
                                                                  fontSize:
                                                                      24.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child: SizedBox(
                                                                width: 200.0,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .textController4,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode4,
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        true,
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'iwb9977s' /* Name your packet */,
                                                                    ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lato',
                                                                        fontSize:
                                                                            20.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  validator: _model
                                                                      .textController4Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child:
                                                                  FlutterFlowDropDown<
                                                                      String>(
                                                                multiSelectController: _model
                                                                        .dropDownValueController2 ??=
                                                                    FormListFieldController<
                                                                        String>(_model
                                                                            .dropDownValue2 ??=
                                                                        List<
                                                                            String>.from(
                                                                  listViewPCPricingtemplateRecord
                                                                          .locationPERSESSION ??
                                                                      [],
                                                                )),
                                                                options: [
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'fczrz53n' /* At Seller's Address */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '3xkryu4g' /* At Buyer's Address */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '4sfxrym7' /* At the Address in the Descript... */,
                                                                  )
                                                                ],
                                                                width: 200.0,
                                                                height: 40.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lato',
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  'zftp7ufd' /* Select Location */,
                                                                ),
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                elevation: 2.0,
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderWidth:
                                                                    0.0,
                                                                borderRadius:
                                                                    8.0,
                                                                margin: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                                hidesUnderline:
                                                                    true,
                                                                isOverButton:
                                                                    false,
                                                                isSearchable:
                                                                    false,
                                                                isMultiSelect:
                                                                    true,
                                                                onMultiSelectChanged: (val) =>
                                                                    safeSetState(() =>
                                                                        _model.dropDownValue2 =
                                                                            val),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child: SizedBox(
                                                                width: 200.0,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .textController5,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode5,
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        true,
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'v6n8g4fp' /* Price of the session */,
                                                                    ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lato',
                                                                        fontSize:
                                                                            20.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  validator: _model
                                                                      .textController5Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 151.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          100.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                FlutterFlowDropDown<String>(
                                                                              multiSelectController: _model.dropDownValueController3 ??= FormListFieldController<String>(_model.dropDownValue3 ??= List<String>.from(
                                                                                listViewPCPricingtemplateRecord.startingtimePERSESSION ?? [],
                                                                              )),
                                                                              options: [
                                                                                FFLocalizations.of(context).getText(
                                                                                  'ctbsvcah' /* 00:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'upn2278m' /* 00:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'bmi3e6uu' /* 01:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '0wjmnw9z' /* 01:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'bd65gk8d' /* 02:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '5gzb68ef' /* 02:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '0lbamy4w' /* 03:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'm4tufh4n' /* 03:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'muftjh63' /* 04:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'se2de574' /* 04:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'opkkcrjo' /* 05:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'l3c2aems' /* 05:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  't6w11vrb' /* 06:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'xea9lzri' /* 06:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '97yt1lbk' /* 07:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'y95hpxf8' /* 07:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'd7votdis' /* 08:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'zq4mfc9s' /* 08:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'mc20abqx' /* 09:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '7smhc3mp' /* 09:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'imu247ju' /* 10:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '1b7pstsu' /* 10:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '7ik1jkov' /* 11:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'yx5rbx9h' /* 11:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'y8bmv8c3' /* 12:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '9dtji0r8' /* 12:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'w318ast5' /* 13:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'q9wxukk7' /* 13:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'qzs9bgr1' /* 14:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'efhi0x2l' /* 14:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'wyu2e4g1' /* 15:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'kovqbwwx' /* 15:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'wjj9myix' /* 16:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '8ssp1808' /* 16:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '6ruup65f' /* 17:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'a5mp1853' /* 17:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'u3z1173a' /* 18:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '7j19th7s' /* 18:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'aoab6rqm' /* 19:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '7r6y3qo0' /* 19:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'zg6xm485' /* 20:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'ush6pdlm' /* 20:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'bdvthppm' /* 21:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'wttozfi4' /* 21:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '9bttb9sz' /* 22:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '59yc5qbi' /* 22:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'wa3q16tu' /* 23:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'p1jqfrie' /* 23:30 */,
                                                                                )
                                                                              ],
                                                                              width: 200.0,
                                                                              height: 40.0,
                                                                              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                '4h6wlpmr' /* Starting time */,
                                                                              ),
                                                                              icon: Icon(
                                                                                Icons.keyboard_arrow_down_rounded,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 24.0,
                                                                              ),
                                                                              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              elevation: 2.0,
                                                                              borderColor: Colors.transparent,
                                                                              borderWidth: 0.0,
                                                                              borderRadius: 8.0,
                                                                              margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                              hidesUnderline: true,
                                                                              isOverButton: false,
                                                                              isSearchable: false,
                                                                              isMultiSelect: true,
                                                                              onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownValue3 = val),
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                FlutterFlowDropDown<String>(
                                                                              multiSelectController: _model.dropDownValueController4 ??= FormListFieldController<String>(_model.dropDownValue4 ??= List<String>.from(
                                                                                listViewPCPricingtemplateRecord.finishingtimePERSESSION ?? [],
                                                                              )),
                                                                              options: [
                                                                                FFLocalizations.of(context).getText(
                                                                                  'vzagc81g' /* 00:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  't2bzixzz' /* 00:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  't22gphvv' /* 01:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '97led56g' /* 01:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '24nnwgii' /* 02:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'tu1om3jz' /* 02:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'tuurbrrk' /* 03:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'qaigy7xw' /* 03:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'c7uhc00n' /* 04:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'owz3av05' /* 04:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '4uxpyqx7' /* 05:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '2adkc3lk' /* 05:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'oup7tte1' /* 06:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '9opmjyty' /* 06:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'je0ji8bk' /* 07:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '5e667i77' /* 07:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  've4s282m' /* 08:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '3ia1m6vy' /* 08:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'q8e7tzw9' /* 09:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '91yvuvru' /* 09:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'y6t1jjlt' /* 10:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'a8y7lnu8' /* 10:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'qti7hisn' /* 11:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'uj5o5p7s' /* 11:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  's3fdaytw' /* 12:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'hnbyxxn1' /* 12:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'z5gt0ld7' /* 13:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'hfst2qrg' /* 13:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '31gsdhaz' /* 14:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '9sc4zeim' /* 14:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'oof3kir6' /* 15:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'o8xycyd4' /* 15:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'u98c64dd' /* 16:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '8jpaycd0' /* 16:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'x9icr475' /* 17:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'l2vlyj6s' /* 17:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'cggmlycm' /* 18:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '9vs3rmf2' /* 18:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'ab7hlyg2' /* 19:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '8cvyxifv' /* 19:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'lilecz81' /* 20:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'w5tikoo4' /* 20:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'avmqu9kq' /* 21:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'hnhr0c0s' /* 21:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'p7nh4vnx' /* 22:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'cksprur2' /* 22:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '6k2jkfpb' /* 23:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'nsyiv6j8' /* 23:30 */,
                                                                                )
                                                                              ],
                                                                              width: 200.0,
                                                                              height: 40.0,
                                                                              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                'h4c799hn' /* Finishing time */,
                                                                              ),
                                                                              icon: Icon(
                                                                                Icons.keyboard_arrow_down_rounded,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 24.0,
                                                                              ),
                                                                              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              elevation: 2.0,
                                                                              borderColor: Colors.transparent,
                                                                              borderWidth: 0.0,
                                                                              borderRadius: 8.0,
                                                                              margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                              hidesUnderline: true,
                                                                              isOverButton: false,
                                                                              isSearchable: false,
                                                                              isMultiSelect: true,
                                                                              onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownValue4 = val),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          100.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child: FlutterFlowDropDown<
                                                                          String>(
                                                                        multiSelectController: _model
                                                                            .dropDownValueController5 ??= FormListFieldController<String>(_model
                                                                                .dropDownValue5 ??=
                                                                            List<String>.from(
                                                                          listViewPCPricingtemplateRecord.selecteddaysPERSESSION ??
                                                                              [],
                                                                        )),
                                                                        options: [
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'imuk2fkn' /* Monday */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'mklamrfi' /* Tuesday */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'xs8q9a4k' /* Wednesday */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'wjofgzgt' /* Thursday */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'kluv7aa8' /* Friday */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'i552zcuq' /* Saturday */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'rz9lh1f1' /* Sunday */,
                                                                          )
                                                                        ],
                                                                        width:
                                                                            200.0,
                                                                        height:
                                                                            40.0,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintText:
                                                                            FFLocalizations.of(context).getText(
                                                                          '1t2gy3h9' /* Select the day(s) */,
                                                                        ),
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                        elevation:
                                                                            2.0,
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderWidth:
                                                                            0.0,
                                                                        borderRadius:
                                                                            8.0,
                                                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                        hidesUnderline:
                                                                            true,
                                                                        isOverButton:
                                                                            false,
                                                                        isSearchable:
                                                                            false,
                                                                        isMultiSelect:
                                                                            true,
                                                                        onMultiSelectChanged:
                                                                            (val) =>
                                                                                safeSetState(() => _model.dropDownValue5 = val),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 151.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          100.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child: FlutterFlowDropDown<
                                                                          String>(
                                                                        controller:
                                                                            _model.dropDownValueController6 ??=
                                                                                FormFieldController<String>(
                                                                          _model.dropDownValue6 ??=
                                                                              listViewPCPricingtemplateRecord.numberofweeksPERSESSION,
                                                                        ),
                                                                        options: [
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'nm4hscae' /* 1 Week */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '7r70ju8e' /* 2 Weeks */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '3gxq0wc5' /* 3 Weeks */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            't8lha2jq' /* 4 Weeks */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'c5txdya4' /* 5 Weeks */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '0gvgfcgq' /* 6 Weeks */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '734zkvyf' /* 7 Weeks */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'pbahspk6' /* 8 Weeks */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '0jdndrmn' /* 9 Weeks */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '80baei1k' /* 10 Weeks */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'p1vj6uj3' /* + 10 Weeks */,
                                                                          )
                                                                        ],
                                                                        onChanged:
                                                                            (val) =>
                                                                                safeSetState(() => _model.dropDownValue6 = val),
                                                                        width:
                                                                            200.0,
                                                                        height:
                                                                            40.0,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintText:
                                                                            FFLocalizations.of(context).getText(
                                                                          '1umido51' /* Choose the duration of the ses... */,
                                                                        ),
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                        elevation:
                                                                            2.0,
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderWidth:
                                                                            0.0,
                                                                        borderRadius:
                                                                            8.0,
                                                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                        hidesUnderline:
                                                                            true,
                                                                        isOverButton:
                                                                            false,
                                                                        isSearchable:
                                                                            false,
                                                                        isMultiSelect:
                                                                            false,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          100.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            200.0,
                                                                        child:
                                                                            TextFormField(
                                                                          controller:
                                                                              _model.textController6,
                                                                          focusNode:
                                                                              _model.textFieldFocusNode6,
                                                                          autofocus:
                                                                              false,
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            isDense:
                                                                                true,
                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  fontFamily: 'Lato',
                                                                                  fontSize: 20.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            hintText:
                                                                                FFLocalizations.of(context).getText(
                                                                              'hhbwclkh' /* The total number of hours */,
                                                                            ),
                                                                            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  fontFamily: 'Lato',
                                                                                  fontSize: 20.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            enabledBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: const BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: const BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            errorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            filled:
                                                                                true,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Lato',
                                                                                fontSize: 20.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          cursorColor:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          validator: _model
                                                                              .textController6Validator
                                                                              .asValidator(context),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 151.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: SizedBox(
                                                                width: 200.0,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .textController7,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode7,
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        true,
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'bmtyu6iz' /* Describe the details of your o... */,
                                                                    ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lato',
                                                                        fontSize:
                                                                            20.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  maxLines: 4,
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  validator: _model
                                                                      .textController7Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 99.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 602.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(
                                                          0.0,
                                                          2.0,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          ToggleIcon(
                                                            onPressed:
                                                                () async {
                                                              await listViewPCPricingtemplateRecord
                                                                  .reference
                                                                  .update({
                                                                ...mapToFirestore(
                                                                  {
                                                                    'PERPROGRAM':
                                                                        !listViewPCPricingtemplateRecord
                                                                            .perprogram,
                                                                  },
                                                                ),
                                                              });
                                                            },
                                                            value:
                                                                listViewPCPricingtemplateRecord
                                                                    .perprogram,
                                                            onIcon: Icon(
                                                              Icons.check_box,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 24.0,
                                                            ),
                                                            offIcon: Icon(
                                                              Icons
                                                                  .check_box_outline_blank,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'hmt92k0h' /* Per Program */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lato',
                                                                  fontSize:
                                                                      24.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child: SizedBox(
                                                                width: 200.0,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .textController8,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode8,
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        true,
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lato',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'i8evgo1n' /* Name your packet */,
                                                                    ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            20.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  validator: _model
                                                                      .textController8Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child:
                                                                  FlutterFlowDropDown<
                                                                      String>(
                                                                multiSelectController: _model
                                                                        .dropDownValueController7 ??=
                                                                    FormListFieldController<
                                                                        String>(_model
                                                                            .dropDownValue7 ??=
                                                                        List<
                                                                            String>.from(
                                                                  listViewPCPricingtemplateRecord
                                                                          .locationPERPROGRAM ??
                                                                      [],
                                                                )),
                                                                options: [
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'pt51o5ml' /* At Seller's Address */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'rfz9ysg4' /* At Buyer's Address */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '7ojogtfu' /* At the Address in the Descript... */,
                                                                  )
                                                                ],
                                                                width: 200.0,
                                                                height: 40.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lato',
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  '5hz17v0l' /* Select the Location */,
                                                                ),
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                elevation: 2.0,
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderWidth:
                                                                    0.0,
                                                                borderRadius:
                                                                    8.0,
                                                                margin: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                                hidesUnderline:
                                                                    true,
                                                                isOverButton:
                                                                    false,
                                                                isSearchable:
                                                                    false,
                                                                isMultiSelect:
                                                                    true,
                                                                onMultiSelectChanged: (val) =>
                                                                    safeSetState(() =>
                                                                        _model.dropDownValue7 =
                                                                            val),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child: SizedBox(
                                                                width: 200.0,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .textController9,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode9,
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        true,
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lato',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'tci8wvpd' /* Price of the program */,
                                                                    ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            20.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  validator: _model
                                                                      .textController9Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 151.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          100.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                FlutterFlowDropDown<String>(
                                                                              multiSelectController: _model.dropDownValueController8 ??= FormListFieldController<String>(_model.dropDownValue8 ??= List<String>.from(
                                                                                listViewPCPricingtemplateRecord.startingtimePERPROGRAM ?? [],
                                                                              )),
                                                                              options: [
                                                                                FFLocalizations.of(context).getText(
                                                                                  'nk5hv24g' /* 00:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'hfygxt5v' /* 00:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'z6rdisaa' /* 01:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'jtb48gd5' /* 01:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'r6gzrtu2' /* 02:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'hnq5ow9f' /* 02:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'sd53jk4l' /* 03:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'adv84vj7' /* 03:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'xbgzlr68' /* 04:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'qpr4t5hy' /* 04:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'vdvhvtvh' /* 05:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'n96xqcyr' /* 05:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'uiel75tc' /* 06:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '3qtscdx9' /* 06:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'lom8ervv' /* 07:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'pc6677cw' /* 07:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '88ey0vym' /* 08:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'nqrbhlty' /* 08:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'eyrrz6a4' /* 09:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'h084fcme' /* 09:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'izr9oaa5' /* 10:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'b4s1g3v1' /* 10:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '65s4odqq' /* 11:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'ywqt6thc' /* 11:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'xtqn489c' /* 12:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '2te6ebs2' /* 12:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'rhe8pk4g' /* 13:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '2f49s7l4' /* 13:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'mrmuh7e4' /* 14:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'bmozckfh' /* 14:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'zz5ywne3' /* 15:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '3ubpiicj' /* 15:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'k3d562lv' /* 16:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'ft4f1ayx' /* 16:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '7k9r71v2' /* 17:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'sm7fgkk2' /* 17:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '18guf2kr' /* 18:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'wr56f0r3' /* 18:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'x9q0431z' /* 19:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '6zlu7n1c' /* 19:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '65eg1omt' /* 20:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'y470rscd' /* 20:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'awbzo4ta' /* 21:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'm6i0tw3f' /* 21:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'kp83p1vu' /* 22:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '6nelpgw3' /* 22:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '1p3rw7y6' /* 23:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '3wizcdfr' /* 23:30 */,
                                                                                )
                                                                              ],
                                                                              width: 200.0,
                                                                              height: 40.0,
                                                                              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                'tp920hju' /* Starting time */,
                                                                              ),
                                                                              icon: Icon(
                                                                                Icons.keyboard_arrow_down_rounded,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 24.0,
                                                                              ),
                                                                              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              elevation: 2.0,
                                                                              borderColor: Colors.transparent,
                                                                              borderWidth: 0.0,
                                                                              borderRadius: 8.0,
                                                                              margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                              hidesUnderline: true,
                                                                              isOverButton: false,
                                                                              isSearchable: false,
                                                                              isMultiSelect: true,
                                                                              onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownValue8 = val),
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                FlutterFlowDropDown<String>(
                                                                              multiSelectController: _model.dropDownValueController9 ??= FormListFieldController<String>(_model.dropDownValue9 ??= List<String>.from(
                                                                                listViewPCPricingtemplateRecord.finishingtimePERPROGRAM ?? [],
                                                                              )),
                                                                              options: [
                                                                                FFLocalizations.of(context).getText(
                                                                                  'bm5odmlg' /* 00:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'vht5w1g0' /* 00:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'hgtdl480' /* 01:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'xnpxlxtj' /* 01:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '1abo18c9' /* 02:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '4wt5onx2' /* 02:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'xeb81ll8' /* 03:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '45hgrh85' /* 03:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '4g6qjo03' /* 04:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'vxdfc1vy' /* 04:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '10xqxqcq' /* 05:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'j0vmbu2t' /* 05:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '71c9c53x' /* 06:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'uns4lx12' /* 06:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'uvfwhhni' /* 07:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'jfikt05d' /* 07:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'dat43e8u' /* 08:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'inswjje9' /* 08:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'ze10xl0e' /* 09:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  's1jpy6d4' /* 09:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'yqi1gmen' /* 10:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'ai5v4p47' /* 10:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'xaiy6ehr' /* 11:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '0is4slag' /* 11:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'dpeomf35' /* 12:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'onxeim27' /* 12:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'kxyarsma' /* 13:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '235zjm9f' /* 13:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '1hxienls' /* 14:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'm4ytnx03' /* 14:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'qwwfk0ma' /* 15:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '1rmbp887' /* 15:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '8sp6df26' /* 16:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'bkl30z3e' /* 16:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'bt03vzl8' /* 17:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '4t441sqh' /* 17:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'xsu9jfjj' /* 18:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'xkdqztdk' /* 18:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '294epar1' /* 19:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '1mczayy1' /* 19:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'zspirb9r' /* 20:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'devfb9u3' /* 20:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'yuwy3541' /* 21:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'yud2i0ky' /* 21:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '67ddxxxe' /* 22:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '123t8iti' /* 22:30 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '5075exkc' /* 23:00 */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '1kj0el91' /* 23:30 */,
                                                                                )
                                                                              ],
                                                                              width: 200.0,
                                                                              height: 40.0,
                                                                              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                'arf371g3' /* Finishing time */,
                                                                              ),
                                                                              icon: Icon(
                                                                                Icons.keyboard_arrow_down_rounded,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 24.0,
                                                                              ),
                                                                              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              elevation: 2.0,
                                                                              borderColor: Colors.transparent,
                                                                              borderWidth: 0.0,
                                                                              borderRadius: 8.0,
                                                                              margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                              hidesUnderline: true,
                                                                              isOverButton: false,
                                                                              isSearchable: false,
                                                                              isMultiSelect: true,
                                                                              onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownValue9 = val),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          100.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child: FlutterFlowDropDown<
                                                                          String>(
                                                                        multiSelectController: _model
                                                                            .dropDownValueController10 ??= FormListFieldController<String>(_model
                                                                                .dropDownValue10 ??=
                                                                            List<String>.from(
                                                                          listViewPCPricingtemplateRecord.selecteddaysPERPROGRAM ??
                                                                              [],
                                                                        )),
                                                                        options: [
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'h0np01z1' /* Monday */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'pl35cant' /* Tuesday */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'jmm9qm1s' /* Wednesday */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '8vr1xkee' /* Thursday */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'n9bwgmj2' /* Friday */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '42ylf1fh' /* Saturday */,
                                                                          ),
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '248gmoc8' /* Sunday */,
                                                                          )
                                                                        ],
                                                                        width:
                                                                            200.0,
                                                                        height:
                                                                            40.0,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Lato',
                                                                              fontSize: 20.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintText:
                                                                            FFLocalizations.of(context).getText(
                                                                          '1tnghegb' /* Select the day(s) */,
                                                                        ),
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                        elevation:
                                                                            2.0,
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderWidth:
                                                                            0.0,
                                                                        borderRadius:
                                                                            8.0,
                                                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                        hidesUnderline:
                                                                            true,
                                                                        isOverButton:
                                                                            false,
                                                                        isSearchable:
                                                                            false,
                                                                        isMultiSelect:
                                                                            true,
                                                                        onMultiSelectChanged:
                                                                            (val) =>
                                                                                safeSetState(() => _model.dropDownValue10 = val),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 151.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: SizedBox(
                                                                width: 200.0,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .textController10,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode10,
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        true,
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'igp1qzpk' /* Describe the details of your o... */,
                                                                    ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            20.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  maxLines: 4,
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  validator: _model
                                                                      .textController10Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 33.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 452.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(
                                                          0.0,
                                                          2.0,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          ToggleIcon(
                                                            onPressed:
                                                                () async {
                                                              await listViewPCPricingtemplateRecord
                                                                  .reference
                                                                  .update({
                                                                ...mapToFirestore(
                                                                  {
                                                                    'PERPRODUCT':
                                                                        !listViewPCPricingtemplateRecord
                                                                            .perproduct,
                                                                  },
                                                                ),
                                                              });
                                                            },
                                                            value:
                                                                listViewPCPricingtemplateRecord
                                                                    .perproduct,
                                                            onIcon: Icon(
                                                              Icons.check_box,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 24.0,
                                                            ),
                                                            offIcon: Icon(
                                                              Icons
                                                                  .check_box_outline_blank,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'qrn8ll7g' /* Per Product */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lato',
                                                                  fontSize:
                                                                      24.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child: SizedBox(
                                                                width: 200.0,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .textController11,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode11,
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        true,
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'a1af37tz' /* Name your packet */,
                                                                    ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            20.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  validator: _model
                                                                      .textController11Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child: SizedBox(
                                                                width: 200.0,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .textController12,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode12,
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        true,
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '0k3lw0ao' /* Price */,
                                                                    ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            20.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  validator: _model
                                                                      .textController12Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 151.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child: SizedBox(
                                                                width: 200.0,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .textController13,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode13,
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        true,
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lato',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '8qgag6tg' /* Production Time */,
                                                                    ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lato',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lato',
                                                                        fontSize:
                                                                            20.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  validator: _model
                                                                      .textController13Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 151.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: const [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        4.0,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                      0.0,
                                                                      2.0,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              child:
                                                                  FlutterFlowDropDown<
                                                                      String>(
                                                                multiSelectController: _model
                                                                        .dropDownValueController11 ??=
                                                                    FormListFieldController<
                                                                        String>(_model
                                                                            .dropDownValue11 ??=
                                                                        List<
                                                                            String>.from(
                                                                  listViewPCPricingtemplateRecord
                                                                          .deliverytypePERPRODUCT ??
                                                                      [],
                                                                )),
                                                                options: [
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'bdgrszjx' /* Seller delivers */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'lmaflro7' /* Buyer picks up */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'vte0c0i4' /* Digital */,
                                                                  )
                                                                ],
                                                                width: 200.0,
                                                                height: 40.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lato',
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  'tvk5ha0l' /* Delivery */,
                                                                ),
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                elevation: 2.0,
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderWidth:
                                                                    0.0,
                                                                borderRadius:
                                                                    8.0,
                                                                margin: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                                hidesUnderline:
                                                                    true,
                                                                isOverButton:
                                                                    false,
                                                                isSearchable:
                                                                    false,
                                                                isMultiSelect:
                                                                    true,
                                                                onMultiSelectChanged: (val) =>
                                                                    safeSetState(() =>
                                                                        _model.dropDownValue11 =
                                                                            val),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 151.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: SizedBox(
                                                                width: double
                                                                    .infinity,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .textController14,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode14,
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        true,
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '539136jg' /* Describe the details of your o... */,
                                                                    ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            20.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  maxLines: 4,
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  validator: _model
                                                                      .textController14Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    1.0, 1.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 22.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                          'Cbecomeproviderascompany5terms');

                                                      var pricingtemplateRecordReference =
                                                          PricingtemplateRecord
                                                              .collection
                                                              .doc();
                                                      await pricingtemplateRecordReference
                                                          .set({
                                                        ...createPricingtemplateRecordData(
                                                          serviceID:
                                                              listViewPCPricingtemplateRecord
                                                                  .serviceID,
                                                          perhour:
                                                              listViewPCPricingtemplateRecord
                                                                  .perhour,
                                                          namePERHOUR: _model
                                                              .textController1
                                                              .text,
                                                          persession:
                                                              listViewPCPricingtemplateRecord
                                                                  .persession,
                                                          namePERSESSION: _model
                                                              .textController4
                                                              .text,
                                                          numberofweeksPERSESSION:
                                                              _model
                                                                  .dropDownValue6,
                                                          descriptionPERSESSION:
                                                              _model
                                                                  .textController7
                                                                  .text,
                                                          perprogram:
                                                              listViewPCPricingtemplateRecord
                                                                  .perprogram,
                                                          namePERPROGRAM: _model
                                                              .textController8
                                                              .text,
                                                          pricePERPROGRAM: double
                                                              .tryParse(_model
                                                                  .textController9
                                                                  .text),
                                                          descriptionPERPROGRAM:
                                                              _model
                                                                  .textController10
                                                                  .text,
                                                          perproduct:
                                                              listViewPCPricingtemplateRecord
                                                                  .perproduct,
                                                          namePERPRODUCT: _model
                                                              .textController11
                                                              .text,
                                                          pricePERPRODUCT: double
                                                              .tryParse(_model
                                                                  .textController12
                                                                  .text),
                                                          productiontimePERPRODUCT:
                                                              _model
                                                                  .textController13
                                                                  .text,
                                                          descriptionPERPRODUCT:
                                                              _model
                                                                  .textController14
                                                                  .text,
                                                          pricePERHOUR: double
                                                              .tryParse(_model
                                                                  .textController2
                                                                  .text),
                                                          descriptionPERHOUR:
                                                              _model
                                                                  .textController3
                                                                  .text,
                                                          pricePERSESSION: double
                                                              .tryParse(_model
                                                                  .textController5
                                                                  .text),
                                                          owner:
                                                              currentUserReference,
                                                          totalnumberofhoursPERSESSION:
                                                              int.tryParse(_model
                                                                  .textController6
                                                                  .text),
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'selecteddaysPERPROGRAM':
                                                                _model
                                                                    .dropDownValue10,
                                                            'locationPERHOUR':
                                                                _model
                                                                    .dropDownValue1,
                                                            'locationPERSESSION':
                                                                _model
                                                                    .dropDownValue2,
                                                            'finishingtimePERPROGRAM':
                                                                _model
                                                                    .dropDownValue9,
                                                            'selecteddaysPERSESSION':
                                                                _model
                                                                    .dropDownValue5,
                                                            'startingtimePERSESSION':
                                                                _model
                                                                    .dropDownValue3,
                                                            'locationPERPROGRAM':
                                                                _model
                                                                    .dropDownValue7,
                                                            'finishingtimePERSESSION':
                                                                _model
                                                                    .dropDownValue4,
                                                            'deliverytypePERPRODUCT':
                                                                _model
                                                                    .dropDownValue11,
                                                            'startingtimePERPROGRAM':
                                                                _model
                                                                    .dropDownValue8,
                                                            'availability':
                                                                getAvailabilityListFirestoreData(
                                                              functions
                                                                  .initialAvailability(),
                                                            ),
                                                          },
                                                        ),
                                                      });
                                                      _model.pricingtemplatecreation =
                                                          PricingtemplateRecord
                                                              .getDocumentFromData({
                                                        ...createPricingtemplateRecordData(
                                                          serviceID:
                                                              listViewPCPricingtemplateRecord
                                                                  .serviceID,
                                                          perhour:
                                                              listViewPCPricingtemplateRecord
                                                                  .perhour,
                                                          namePERHOUR: _model
                                                              .textController1
                                                              .text,
                                                          persession:
                                                              listViewPCPricingtemplateRecord
                                                                  .persession,
                                                          namePERSESSION: _model
                                                              .textController4
                                                              .text,
                                                          numberofweeksPERSESSION:
                                                              _model
                                                                  .dropDownValue6,
                                                          descriptionPERSESSION:
                                                              _model
                                                                  .textController7
                                                                  .text,
                                                          perprogram:
                                                              listViewPCPricingtemplateRecord
                                                                  .perprogram,
                                                          namePERPROGRAM: _model
                                                              .textController8
                                                              .text,
                                                          pricePERPROGRAM: double
                                                              .tryParse(_model
                                                                  .textController9
                                                                  .text),
                                                          descriptionPERPROGRAM:
                                                              _model
                                                                  .textController10
                                                                  .text,
                                                          perproduct:
                                                              listViewPCPricingtemplateRecord
                                                                  .perproduct,
                                                          namePERPRODUCT: _model
                                                              .textController11
                                                              .text,
                                                          pricePERPRODUCT: double
                                                              .tryParse(_model
                                                                  .textController12
                                                                  .text),
                                                          productiontimePERPRODUCT:
                                                              _model
                                                                  .textController13
                                                                  .text,
                                                          descriptionPERPRODUCT:
                                                              _model
                                                                  .textController14
                                                                  .text,
                                                          pricePERHOUR: double
                                                              .tryParse(_model
                                                                  .textController2
                                                                  .text),
                                                          descriptionPERHOUR:
                                                              _model
                                                                  .textController3
                                                                  .text,
                                                          pricePERSESSION: double
                                                              .tryParse(_model
                                                                  .textController5
                                                                  .text),
                                                          owner:
                                                              currentUserReference,
                                                          totalnumberofhoursPERSESSION:
                                                              int.tryParse(_model
                                                                  .textController6
                                                                  .text),
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'selecteddaysPERPROGRAM':
                                                                _model
                                                                    .dropDownValue10,
                                                            'locationPERHOUR':
                                                                _model
                                                                    .dropDownValue1,
                                                            'locationPERSESSION':
                                                                _model
                                                                    .dropDownValue2,
                                                            'finishingtimePERPROGRAM':
                                                                _model
                                                                    .dropDownValue9,
                                                            'selecteddaysPERSESSION':
                                                                _model
                                                                    .dropDownValue5,
                                                            'startingtimePERSESSION':
                                                                _model
                                                                    .dropDownValue3,
                                                            'locationPERPROGRAM':
                                                                _model
                                                                    .dropDownValue7,
                                                            'finishingtimePERSESSION':
                                                                _model
                                                                    .dropDownValue4,
                                                            'deliverytypePERPRODUCT':
                                                                _model
                                                                    .dropDownValue11,
                                                            'startingtimePERPROGRAM':
                                                                _model
                                                                    .dropDownValue8,
                                                            'availability':
                                                                getAvailabilityListFirestoreData(
                                                              functions
                                                                  .initialAvailability(),
                                                            ),
                                                          },
                                                        ),
                                                      }, pricingtemplateRecordReference);

                                                      await currentUserDocument!
                                                          .pricingtemplateRef!
                                                          .update(
                                                              createPricingtemplateRecordData());

                                                      safeSetState(() {});
                                                    },
                                                    child: const Icon(
                                                      Icons.next_plan_rounded,
                                                      color: Color(0xFF4F0B92),
                                                      size: 77.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
