import ../QtCore/gen_qobject_types
export gen_qobject_types

type QDesignerFormWindowToolInterface* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QDesignerFormWindowToolInterface, source: QDesignerFormWindowToolInterface) {.error.}
proc `=sink`(dest: var QDesignerFormWindowToolInterface, source: QDesignerFormWindowToolInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

