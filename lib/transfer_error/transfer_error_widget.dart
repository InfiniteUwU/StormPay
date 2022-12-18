import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TransferErrorWidget extends StatefulWidget {
  const TransferErrorWidget({Key? key}) : super(key: key);

  @override
  _TransferErrorWidgetState createState() => _TransferErrorWidgetState();
}

class _TransferErrorWidgetState extends State<TransferErrorWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/6601617.png',
                  width: 250,
                  height: 250,
                  fit: BoxFit.fitHeight,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '9p8emk1e' /* Transfer Error */,
                ),
                style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: 'Lexend',
                      color: FlutterFlowTheme.of(context).textColor,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 70),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.leftToRight,
                      duration: Duration(milliseconds: 200),
                      reverseDuration: Duration(milliseconds: 200),
                      child: NavBarPage(initialPage: 'MY_Card'),
                    ),
                  );
                },
                text: FFLocalizations.of(context).getText(
                  'hksjysa1' /* Okay */,
                ),
                options: FFButtonOptions(
                  width: 130,
                  height: 50,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lexend',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
