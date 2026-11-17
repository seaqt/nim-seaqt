import ../QtWidgets/gen_qdialog_types
export gen_qdialog_types

type QPrintPreviewDialog* = object of gen_qdialog_types.QDialog
proc `=copy`(dest: var QPrintPreviewDialog, source: QPrintPreviewDialog) {.error.}
proc `=sink`(dest: var QPrintPreviewDialog, source: QPrintPreviewDialog) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

