import ./gen_qpushbutton_types
export gen_qpushbutton_types

type QCommandLinkButton* = object of gen_qpushbutton_types.QPushButton
proc `=copy`(dest: var QCommandLinkButton, source: QCommandLinkButton) {.error.}
proc `=sink`(dest: var QCommandLinkButton, source: QCommandLinkButton) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

