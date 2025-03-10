import ./gen_qdialog_types
export gen_qdialog_types

type QProgressDialog* = object of gen_qdialog_types.QDialog
proc `=copy`(dest: var QProgressDialog, source: QProgressDialog) {.error.}
proc `=sink`(dest: var QProgressDialog, source: QProgressDialog) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

