import ../QtWidgets/gen_qwidget_types
export gen_qwidget_types

type QDesignerNewFormWidgetInterface* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QDesignerNewFormWidgetInterface, source: QDesignerNewFormWidgetInterface) {.error.}
proc `=sink`(dest: var QDesignerNewFormWidgetInterface, source: QDesignerNewFormWidgetInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

