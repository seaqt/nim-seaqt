import ../QtWidgets/gen_qwidget_types
export gen_qwidget_types

type QDesignerObjectInspectorInterface* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QDesignerObjectInspectorInterface, source: QDesignerObjectInspectorInterface) {.error.}
proc `=sink`(dest: var QDesignerObjectInspectorInterface, source: QDesignerObjectInspectorInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

