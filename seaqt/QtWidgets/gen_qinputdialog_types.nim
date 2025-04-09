import ./gen_qdialog_types
export gen_qdialog_types

type QInputDialog* = object of gen_qdialog_types.QDialog
proc `=copy`(dest: var QInputDialog, source: QInputDialog) {.error.}
proc `=sink`(dest: var QInputDialog, source: QInputDialog) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

