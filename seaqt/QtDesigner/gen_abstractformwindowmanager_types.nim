import ../QtCore/gen_qobject_types
export gen_qobject_types

type QDesignerFormWindowManagerInterface* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QDesignerFormWindowManagerInterface, source: QDesignerFormWindowManagerInterface) {.error.}
proc `=sink`(dest: var QDesignerFormWindowManagerInterface, source: QDesignerFormWindowManagerInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

