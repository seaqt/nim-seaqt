import ../QtGui/gen_qaction_types
export gen_qaction_types

type QWidgetAction* = object of gen_qaction_types.QAction
proc `=copy`(dest: var QWidgetAction, source: QWidgetAction) {.error.}
proc `=sink`(dest: var QWidgetAction, source: QWidgetAction) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

