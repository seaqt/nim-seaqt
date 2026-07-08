import ../QtWidgets/gen_qdialog_types
export gen_qdialog_types

type QAbstractPrintDialog* = object of gen_qdialog_types.QDialog
proc `=copy`(dest: var QAbstractPrintDialog, source: QAbstractPrintDialog) {.error.}
proc `=sink`(dest: var QAbstractPrintDialog, source: QAbstractPrintDialog) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

