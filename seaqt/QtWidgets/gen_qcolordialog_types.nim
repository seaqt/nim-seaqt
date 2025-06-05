import ./gen_qdialog_types
export gen_qdialog_types

type QColorDialog* = object of gen_qdialog_types.QDialog
proc `=copy`(dest: var QColorDialog, source: QColorDialog) {.error.}
proc `=sink`(dest: var QColorDialog, source: QColorDialog) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

