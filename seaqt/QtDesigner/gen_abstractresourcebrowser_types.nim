import ../QtWidgets/gen_qwidget_types
export gen_qwidget_types

type QDesignerResourceBrowserInterface* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QDesignerResourceBrowserInterface, source: QDesignerResourceBrowserInterface) {.error.}
proc `=sink`(dest: var QDesignerResourceBrowserInterface, source: QDesignerResourceBrowserInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

