import ./gen_qdialog_types
export gen_qdialog_types

type QFileDialog* = object of gen_qdialog_types.QDialog
proc `=copy`(dest: var QFileDialog, source: QFileDialog) {.error.}
proc `=sink`(dest: var QFileDialog, source: QFileDialog) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

