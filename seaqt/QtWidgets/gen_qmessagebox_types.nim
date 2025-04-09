import ./gen_qdialog_types
export gen_qdialog_types

type QMessageBox* = object of gen_qdialog_types.QDialog
proc `=copy`(dest: var QMessageBox, source: QMessageBox) {.error.}
proc `=sink`(dest: var QMessageBox, source: QMessageBox) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

