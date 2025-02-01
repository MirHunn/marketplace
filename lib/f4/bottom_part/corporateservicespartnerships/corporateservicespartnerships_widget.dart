import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'corporateservicespartnerships_model.dart';
export 'corporateservicespartnerships_model.dart';

class CorporateservicespartnershipsWidget extends StatefulWidget {
  const CorporateservicespartnershipsWidget({super.key});

  @override
  State<CorporateservicespartnershipsWidget> createState() =>
      _CorporateservicespartnershipsWidgetState();
}

class _CorporateservicespartnershipsWidgetState
    extends State<CorporateservicespartnershipsWidget> {
  late CorporateservicespartnershipsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CorporateservicespartnershipsModel());
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
        body: Visibility(
          visible: responsiveVisibility(
            context: context,
            phone: false,
          ),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 33.0, 0.0, 0.0),
                          child: ListView(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          33.0, 0.0, 0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(88.0),
                                          bottomRight: Radius.circular(88.0),
                                          topLeft: Radius.circular(88.0),
                                          topRight: Radius.circular(88.0),
                                        ),
                                        child: Image.asset(
                                          'assets/images/marketingimage.webp',
                                          width: 333.0,
                                          height: 555.0,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          33.0, 0.0, 33.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '8blx63y0' /* Let's Build Something Amazing ... */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lato',
                                              fontSize: 39.0,
                                              letterSpacing: 0.0,
                                              fontStyle: FontStyle.italic,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          33.0, 33.0, 33.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 333.0,
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
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(33.0),
                                            bottomRight: Radius.circular(33.0),
                                            topLeft: Radius.circular(33.0),
                                            topRight: Radius.circular(33.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  77.0, 55.0, 77.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'oiyj9xui' /* At MirHunn, we believe in the ... */,
                                            ),
                                            textAlign: TextAlign.justify,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Lato',
                                                  fontSize: 37.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    77.0, 77.0, 77.0, 77.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 33.0, 0.0),
                                        child: Container(
                                          width: 1111.0,
                                          height: 555.0,
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
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(33.0),
                                              bottomRight:
                                                  Radius.circular(33.0),
                                              topLeft: Radius.circular(33.0),
                                              topRight: Radius.circular(33.0),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        22.0, 22.0, 22.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '4iy7oes9' /* Have an Idea? Let’s Talk! */,
                                                  ),
                                                  textAlign: TextAlign.justify,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        fontSize: 39.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        22.0, 0.0, 22.0, 44.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'xcp8veqe' /* No idea is too big or small. W... */,
                                                  ),
                                                  textAlign: TextAlign.justify,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        fontSize: 37.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          33.0, 0.0, 0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(88.0),
                                          bottomRight: Radius.circular(88.0),
                                          topLeft: Radius.circular(88.0),
                                          topRight: Radius.circular(88.0),
                                        ),
                                        child: Image.asset(
                                          'assets/images/DALLE_2024-11-25_16.00.48_-_A_minimalistic_design_featuring_a_clear_light_bulb_placed_on_a_chalkboard-style_background,_with_simple_thought_bubbles_drawn_in_chalk_around_it._The_.webp',
                                          width: 333.0,
                                          height: 333.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    77.0, 77.0, 77.0, 77.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 1111.0,
                                        height: 555.0,
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
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(33.0),
                                            bottomRight: Radius.circular(33.0),
                                            topLeft: Radius.circular(33.0),
                                            topRight: Radius.circular(33.0),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      22.0, 22.0, 22.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ty118dgl' /* How to Reach Us */,
                                                ),
                                                textAlign: TextAlign.justify,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          fontSize: 39.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      22.0, 0.0, 22.0, 44.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '34mpxpb4' /* How to Reach Us
Send us your i... */
                                                  ,
                                                ),
                                                textAlign: TextAlign.justify,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          fontSize: 37.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    await launchUrl(Uri(
                                                        scheme: 'mailto',
                                                        path:
                                                            'newsletter@mirhunn.com',
                                                        query: {
                                                          'subject':
                                                              'Inquiry About MirHunn Newsletter',
                                                          'body':
                                                              'Hi MirHunn Team,    I’m interested in featuring my services or products in your newsletter.   Please let me know the next steps.    Best regards',
                                                        }
                                                            .entries
                                                            .map((MapEntry<
                                                                        String,
                                                                        String>
                                                                    e) =>
                                                                '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                                            .join('&')));
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '61m50fwn' /* Get in touch with MirHunn News... */,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 555.0,
                                                    height: 55.0,
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    iconPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: const Color(0xFF4F0B92),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 22.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 0.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            33.0),
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
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 100.0,
                      height: 33.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Icon(
                          Icons.arrow_back,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 33.0,
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
    );
  }
}
