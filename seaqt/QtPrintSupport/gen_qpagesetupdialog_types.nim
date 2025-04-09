import ../QtWidgets/gen_qdialog_types
export gen_qdialog_types

type QPageSetupDialog* = object of gen_qdialog_types.QDialog
proc `=copy`(dest: var QPageSetupDialog, source: QPageSetupDialog) {.error.}
proc `=sink`(dest: var QPageSetupDialog, source: QPageSetupDialog) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

