import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

final alertStyle = AlertStyle(
  animationType: AnimationType.fromBottom,
  isCloseButton: false,
  isOverlayTapDismiss: false,
  descStyle: TextStyle(fontWeight: FontWeight.bold),
  descTextAlign: TextAlign.start,
  animationDuration: Duration(milliseconds: 500),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(0.0),
    side: BorderSide(
      color: Colors.grey,
    ),
  ),
  titleStyle: TextStyle(
    color: Colors.green,
  ),
  alertAlignment: Alignment.center,
);

void DodiApa(BuildContext context) {
  Alert(
    style: alertStyle,
    context: context,
    type: AlertType.success,
    title: "BERHASIL",
    desc: "Data berhasil ditambahkan.",
    buttons: [
      DialogButton(
        child: Text(
          "kembali",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        width: 120,
      )
    ],
  ).show();
}

///
final alertStylee = AlertStyle(
  animationType: AnimationType.fromBottom,
  isCloseButton: false,
  isOverlayTapDismiss: false,
  descStyle: TextStyle(fontWeight: FontWeight.bold),
  descTextAlign: TextAlign.start,
  animationDuration: Duration(milliseconds: 500),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(0.0),
    side: BorderSide(
      color: Colors.grey,
    ),
  ),
  titleStyle: TextStyle(
    color: Color.fromARGB(255, 197, 47, 36),
  ),
  alertAlignment: Alignment.center,
);

void Cahyadi(BuildContext context) {
  Alert(
    style: alertStyle,
    context: context,
    type: AlertType.warning,
    // title: "BERHASIL",
    desc: "Yakin ingin keluar ??",
    buttons: [
      DialogButton(
        child: Text(
          "Keluar",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        width: 120,
      )
    ],
  ).show();
}

///
final alertStyleee = AlertStyle(
  animationType: AnimationType.fromBottom,
  isCloseButton: false,
  isOverlayTapDismiss: false,
  descStyle: TextStyle(fontWeight: FontWeight.bold),
  descTextAlign: TextAlign.start,
  animationDuration: Duration(milliseconds: 500),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(0.0),
    side: BorderSide(
      color: Colors.grey,
    ),
  ),
  titleStyle: TextStyle(
    color: Colors.green,
  ),
  alertAlignment: Alignment.center,
);

void Wiguna(BuildContext context) {
  Alert(
    style: alertStyle,
    context: context,
    type: AlertType.success,
    title: "BERHASIL",
    desc: "Data berhasil di Update.",
    buttons: [
      DialogButton(
        child: Text(
          "kembali",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        width: 120,
      )
    ],
  ).show();
}
