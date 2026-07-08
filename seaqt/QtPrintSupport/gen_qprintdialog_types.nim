import ./gen_qabstractprintdialog_types
export gen_qabstractprintdialog_types

type QPrintDialog* = object of gen_qabstractprintdialog_types.QAbstractPrintDialog
proc `=copy`(dest: var QPrintDialog, source: QPrintDialog) {.error.}
proc `=sink`(dest: var QPrintDialog, source: QPrintDialog) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

