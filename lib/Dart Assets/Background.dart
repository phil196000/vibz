import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vibz/Theme/thememodel.dart';
import 'package:vibz/redux/AppState.dart';

class Background extends StatelessWidget {
  final Widget child;
  Background({
    Key key,
    @required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState,AppState>(
      converter: (store) => store.state,
      builder: (context, state) {
        // ThemeModel back = ThemeModel.fromJson(state['Theme']);
        // print('background color');
        // log(state.themeModel.toString());
        return Scaffold(
          backgroundColor: state.themeModel.background,
            // backgroundColor: back.background,
            body: SafeArea(
                child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(23.0, 179.0),
                    child: SizedBox(
                      width: 330.0,
                      height: 370.0,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 330.0, 330.0),
                            size: Size(330.0, 370.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                color: const Color(0x529ca2da),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x1c12fdbe),
                                    offset: Offset(0, 10),
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(15.0, 46.0, 130.5, 225.0),
                            size: Size(330.0, 370.0),
                            pinLeft: true,
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_q9um0l,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(80.3, 145.0, 130.5, 225.0),
                            size: Size(330.0, 370.0),
                            pinBottom: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_7l3kn9,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(163.0, -6.0),
                    child: SizedBox(
                      width: 330.0,
                      height: 370.0,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 330.0, 330.0),
                            size: Size(330.0, 370.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                color: const Color(0x529ca2da),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x1c12fdbe),
                                    offset: Offset(0, 10),
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(15.0, 46.0, 130.5, 225.0),
                            size: Size(330.0, 370.0),
                            pinLeft: true,
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_q9um0l,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(80.3, 145.0, 130.5, 225.0),
                            size: Size(330.0, 370.0),
                            pinBottom: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_7l3kn9,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(202.0, 390.0),
                    child: SizedBox(
                      width: 330.0,
                      height: 370.0,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 330.0, 330.0),
                            size: Size(330.0, 370.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                color: const Color(0x529ca2da),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x1c12fdbe),
                                    offset: Offset(0, 10),
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(15.0, 46.0, 130.5, 225.0),
                            size: Size(330.0, 370.0),
                            pinLeft: true,
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_q9um0l,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(80.3, 145.0, 130.5, 225.0),
                            size: Size(330.0, 370.0),
                            pinBottom: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_7l3kn9,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(36.0, 616.0),
                    child: Transform.rotate(
                      angle: 1.2566,
                      child: SizedBox(
                        width: 149.0,
                        height: 167.0,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 149.0, 149.0),
                              size: Size(149.0, 167.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0x529ca2da),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x1c12fdbe),
                                      offset: Offset(0, 10),
                                      blurRadius: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(6.8, 20.7, 58.9, 101.6),
                              size: Size(149.0, 167.0),
                              pinLeft: true,
                              pinTop: true,
                              fixedWidth: true,
                              fixedHeight: true,
                              child: SvgPicture.string(
                                _svg_m991cg,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(36.2, 65.4, 58.9, 101.6),
                              size: Size(149.0, 167.0),
                              pinBottom: true,
                              fixedWidth: true,
                              fixedHeight: true,
                              child: SvgPicture.string(
                                _svg_sjs17s,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: this.child,
                  )
                ],
              ),
            )));
      },
    );
  }
}

const String _svg_q9um0l =
    '<svg viewBox="38.0 171.0 130.5 225.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(38.0, 171.0)" d="M 112.5 0 C 174.6320343017578 0 56.01258087158203 50.36796569824219 56.01258087158203 112.5 C 56.01258087158203 174.6320343017578 174.6320343017578 225 112.5 225 C 50.36796951293945 225 0 174.6320343017578 0 112.5 C 0 50.36796951293945 50.36796951293945 0 112.5 0 Z" fill="#12fdbe" fill-opacity="0.32" stroke="none" stroke-width="1" stroke-opacity="0.32" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_7l3kn9 =
    '<svg viewBox="103.3 270.0 130.5 225.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(103.25, 270.0)" d="M 18.00439453125 0 C -44.12763977050781 0 74.49181365966797 50.36796569824219 74.49181365966797 112.5 C 74.49181365966797 174.6320343017578 -44.12763977050781 225 18.00439453125 225 C 80.13642883300781 225 130.50439453125 174.6320343017578 130.50439453125 112.5 C 130.50439453125 50.36796951293945 80.13642883300781 0 18.00439453125 0 Z" fill="#12fdbe" fill-opacity="0.32" stroke="none" stroke-width="1" stroke-opacity="0.32" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_m991cg =
    '<svg viewBox="29.8 145.8 58.9 101.6" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(29.77, 145.77)" d="M 50.79927825927734 0 C 78.85494232177734 0 25.29243278503418 22.74361228942871 25.29243278503418 50.79927825927734 C 25.29243278503418 78.85494232177734 78.85494232177734 101.5985565185547 50.79927825927734 101.5985565185547 C 22.74361419677734 101.5985565185547 0 78.85494232177734 0 50.79927825927734 C 0 22.74361419677734 22.74361419677734 0 50.79927825927734 0 Z" fill="#12fdbe" fill-opacity="0.32" stroke="none" stroke-width="1" stroke-opacity="0.32" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_sjs17s =
    '<svg viewBox="59.2 190.5 58.9 101.6" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(59.24, 190.47)" d="M 8.12987232208252 0 C -19.92579460144043 0 33.63671875 22.74361228942871 33.63671875 50.79927825927734 C 33.63671875 78.85494232177734 -19.92579460144043 101.5985565185547 8.12987232208252 101.5985565185547 C 36.18553924560547 101.5985565185547 58.92914962768555 78.85494232177734 58.92914962768555 50.79927825927734 C 58.92914962768555 22.74361419677734 36.18553924560547 0 8.12987232208252 0 Z" fill="#12fdbe" fill-opacity="0.32" stroke="none" stroke-width="1" stroke-opacity="0.32" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
