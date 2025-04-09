import ../QtGui/gen_qaccessibleobject_types
export gen_qaccessibleobject_types

# TODO Multiple inheritance from QAccessibleActionInterface
type QAccessibleWidget* = object of gen_qaccessibleobject_types.QAccessibleObject
proc `=copy`(dest: var QAccessibleWidget, source: QAccessibleWidget) {.error.}
proc `=sink`(dest: var QAccessibleWidget, source: QAccessibleWidget) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

