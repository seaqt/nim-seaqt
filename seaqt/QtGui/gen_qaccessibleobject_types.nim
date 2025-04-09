import ./gen_qaccessible_types
export gen_qaccessible_types

type QAccessibleObject* = object of gen_qaccessible_types.QAccessibleInterface
proc `=copy`(dest: var QAccessibleObject, source: QAccessibleObject) {.error.}
proc `=sink`(dest: var QAccessibleObject, source: QAccessibleObject) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QAccessibleApplication* = object of QAccessibleObject
proc `=copy`(dest: var QAccessibleApplication, source: QAccessibleApplication) {.error.}
proc `=sink`(dest: var QAccessibleApplication, source: QAccessibleApplication) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

