import ../QtWidgets/gen_qwidget_types
export gen_qwidget_types

type QDesignerFormWindowInterface* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QDesignerFormWindowInterface, source: QDesignerFormWindowInterface) {.error.}
proc `=sink`(dest: var QDesignerFormWindowInterface, source: QDesignerFormWindowInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

