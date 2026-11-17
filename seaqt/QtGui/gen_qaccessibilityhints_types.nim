import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAccessibilityHints* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAccessibilityHints, source: QAccessibilityHints) {.error.}
proc `=sink`(dest: var QAccessibilityHints, source: QAccessibilityHints) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

