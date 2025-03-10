import ./gen_qdialog_types
export gen_qdialog_types

type QFontDialog* = object of gen_qdialog_types.QDialog
proc `=copy`(dest: var QFontDialog, source: QFontDialog) {.error.}
proc `=sink`(dest: var QFontDialog, source: QFontDialog) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

