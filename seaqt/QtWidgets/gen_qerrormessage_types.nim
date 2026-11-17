import ./gen_qdialog_types
export gen_qdialog_types

type QErrorMessage* = object of gen_qdialog_types.QDialog
proc `=copy`(dest: var QErrorMessage, source: QErrorMessage) {.error.}
proc `=sink`(dest: var QErrorMessage, source: QErrorMessage) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

